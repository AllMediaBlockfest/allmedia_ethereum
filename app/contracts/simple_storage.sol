contract Database {
    mapping (bytes16 => address) public database;

    function Database() {
    }

    function newAsset(bytes16 _isrc, address _contract) {
        database[_isrc] = _contract;
    }
}

contract SimpleStorage {
    uint public storedData;

    function SimpleStorage(uint initialValue) {
        storedData = initialValue;
    }

    function set(uint x) {
        storedData = x;
    }

    function get() constant returns (uint retVal) {
        return storedData;
    }
}
