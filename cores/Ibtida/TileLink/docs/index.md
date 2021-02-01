## Welcome to the TL-UL Implementation Specification

This page is dedicated for the implementation specification of the TileLink Uncached Lightweight (TL-UL) protocol.

The TL-UL protocol conforms to the [Tilelink 1.7.1 specification](https://sifive.cdn.prismic.io/sifive%2F57f93ecf-2c42-46f7-9818-bcdd7d39400a_tilelink-spec-1.7.1.pdf) provided by SiFive.

### a_size functionality
For all the Host (Master) messages listed below (Get, PutPartialData, PutFullData) the `a_size` in terms of log2(bytes) cannot be greater than the physical data bus width in TL-UL. For example, if the physical data bus width is 32 bits then `a_size <= 2` since 2^a_size -> 2^2 -> 4 bytes.

#### Get
`a_size` indicates the total amount of data the requesting agent wishes to read in terms of _log2(bytes)_. `a_size` represents the size of the resulting `AccessAckData` response.

#### Possbilities of a_size in Get

  | a_size | Interpretation (2^a_size) bytes |
|-------|--------|
| 0 | Slave returns (2^0 = 1 byte) in AccessAckData | 
| 1 | Slave returns (2^1 = 2 bytes) in AccessAckData |
| 2 | Slave returns (2^2 = 4 bytes) in AccessAckData |

#### PutFullData
`a_size` indicates the total amount of data the requesting agent wishes to write in terms of _log2(bytes)_. Although, the specification allows `a_size` to represent any value but `PutFullData` should always set `a_size = 2` for a 32-bit wide data bus or `a_size = 3` for a 64-bit wide data bus.

#### Possbilities of a_size in PutFullData

| a_size | Interpretation (2^a_size) bytes |
| ------ | --------- |
| 2 | Host intends to write (2^2 = 4 bytes) of data on the data bus


#### PutPartialData
`a_size` indicates how many bytes are transmitted in terms of _log2(bytes)_. As compared to `PutFullData`, the `PutPartialData` can write data at byte granuality using the `a_size` and `a_mask` properties. The `a_size` can indicate a byte, two bytes, three bytes as well as four bytes.

#### Possbilities of a_size in PutPartialData

| a_size | Interpretation (2^a_size) bytes |
| ------ | --------- |
| 0 | Host intends to write (2^0 = 1 byte) of data on the data bus
| 1 | Host intends to write (2^1 = 2 bytes) of data on the data bus
| 2 | Host intends to write (2^2 = 4 bytes) of data on the data bus

### d_size functionality
For all the Device (Slave) messages listed below (AccessAck, AccessAckData) the `d_size` in terms of log2(bytes) cannot be greater than the physical data bus width in TL-UL and must always be in correspondence with `a_size`.

#### AccessAck
`d_size` indicates the size of the data written by the slave device. This should always correspond to the `a_size` that was received when the Host initiated the request.


#### Possbilities of d_size in AccessAck

| d_size | Interpretation (2^d_size) bytes |
| ------ | --------- |
| 0 | Device wrote (2^0 = 1 byte) of data
| 1 | Device wrote (2^1 = 2 bytes) of data
| 2 | Device wrote (2^2 = 4 bytes) of data

#### AccessAckData
`d_size` indicates the size of the data accessed by the device and is included in the response message along with `d_data` which contains the actual data payload, and other d channel properties. `d_size` must always correspond with the `a_size` which the host sets while sending a request to the device.

#### Possbilities of d_size in AccessAckData

| d_size | Interpretation (2^d_size) bytes |
| ------ | --------- |
| 0 | Device accessed (2^0 = 1 byte) of data
| 1 | Device accessed (2^1 = 2 bytes) of data
| 2 | Device accessed (2^2 = 4 bytes) of data

### a_mask functionality
`a_mask`indicates the byte lanes that are active for the current operation. The `a_mask` signal bit width is identified by Data Bus Width (DBW)/8 which gives 4 bit width for a 32 bit Data Bus. If all the `a_mask` bits are set `1111` it means that all byte lanes are active.

#### Get
`a_mask` selects the byte lanes to read from the data that is received in `AccessAckData`. The `a_size` describes the size of the data received (1 Byte, 2 Bytes, 3 Bytes, 4 Bytes) and the `a_mask` selects from which byte lane to read the data.

#### Possbilities of a_mask in Get

| a_size[1:0] | Size in Bytes (2^a_size) | a_mask[3:0] | Description
| :------: | :-----: | :------: | ----------- |
| 'd0 | 1 byte | 'b0001 | Read zeroth byte lane from the received data.
| 'd0 | 1 byte | 'b0010 | Read first byte lane from the received data.
| 'd0 | 1 byte | 'b0100 | Read second byte lane from the received data.
| 'd0 | 1 byte | 'b1000 | Read third byte lane from the received data.
| 'd1 | 2 bytes |'b0011 | Read the zeroth and first byte lane from the received data.
| 'd1 | 2 bytes |'b0110 | Read the first and second byte lane from the received data.
| 'd1 | 2 bytes |'b1100 | Read the second and third byte lane from the received data.
| 'd2 | 4 bytes |'b0111 | Read the zeroth, first and second byte lane from the received data.
| 'd2 | 4 bytes |'b1110 | Read the first, second and third byte lane from the received data.
| 'd2 | 4 bytes |'b1111 | Read all byte lanes from the received data.

**Note**: The 'd represents decimal representation and 'b represents the binary representation in the table above. The `a_mask` bits are contiguous i.e they are side by side an not like `b1001` and so on. This is not allowed by the specification.

#### PutFullData
`a_mask` selects the byte lanes to be written. One HIGH bit of `a_mask` indicates one byte written. Whenever `PutFullData` is active then `a_size = 2` and all the bits of `a_mask` must be set `a_mask = 1111` in order to write all byte lanes. 

#### Possbilities of a_mask in PutFullData

| a_size[1:0] | Size in Bytes (2^a_size) | a_mask[3:0] | Description
| :------: | :-----: | :------: | ----------- |
| 'd2 | 4 byte | 'b1111 | Write all byte lanes of the data.

**Note**: The 'd represents decimal representation and 'b represents the binary representation in the table above. The `a_mask` bits are contiguous i.e they are side by side an not like `b1001` and so on. This is not allowed by the specification.

#### PutPartialData
`a_mask` selects the byte lanes to be written. During `PutPartialData` the `a_size` can be either 0, 1 or 2 and `a_mask` will select the corresponding byte lane to write.

| a_size[1:0] | Size in Bytes (2^a_size) | a_mask[3:0] | Description
| :------: | :-----: | :------: | ----------- |
| 'd0 | 1 byte | 'b0001 | Write zeroth byte lane of the data.
| 'd0 | 1 byte | 'b0010 | Write first byte lane of the data.
| 'd0 | 1 byte | 'b0100 | Write second byte lane of the data.
| 'd0 | 1 byte | 'b1000 | Write third byte lane of the data.
| 'd1 | 2 bytes |'b0011 | Write the zeroth and first byte lane of the data.
| 'd1 | 2 bytes |'b0110 | Write the first and second byte lane of the data.
| 'd1 | 2 bytes |'b1100 | Write the second and third byte lane of the data.
| 'd1 | 2 bytes |'b1001 | Write the zeroth and third byte lane of the data.
| 'd1 | 2 bytes |'b1010 | Write the first and third byte lane of the data.
| ... | ... |... | Other non contiguous possibilities
| 'd2 | 4 bytes |'b0111 | Write the zeroth, first and second byte lane of the data.
| 'd2 | 4 bytes |'b1110 | Write the first, second and third byte lane of the data.
| 'd2 | 4 bytes |'b1101 | Write the zeroth, second and third byte lane of the data.
| ... | ... |... | Other non contiguous possibilities
| 'd2 | 4 bytes |'b1111 | Write all byte lanes of the data.

**Note**: The 'd represents decimal representation and 'b represents the binary representation in the table above. The `a_mask` bits can be non-contiguous for `PutPartialData`. This is allowed by the specification. See [Section 6.2.3 PutPartialData](https://sifive.cdn.prismic.io/sifive%2F57f93ecf-2c42-46f7-9818-bcdd7d39400a_tilelink-spec-1.7.1.pdf)



### Support or Contact

Having trouble with the documentation? Please open an issue [here](https://github.com/hadirkhan10/TileLink/issues) defining the problem you are facing or any question you have.
