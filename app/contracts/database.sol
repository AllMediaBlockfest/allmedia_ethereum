contract Database {
    mapping (bytes16 => address) public database;

    function Database() {
    }

    function newAsset(bytes16 _isrc, address _contract) {
        database[_isrc] = _contract;
    }
}
