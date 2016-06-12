contract Database {
    struct Asset {
        bytes16 iswc;
        address artist;
        address sacem;
    }

    // list of the SACEM id by country
    mapping (bytes16 => address) public sacems;
    // list of the artists by IPI code
    mapping (bytes16 => address) public artists;
    // list of the assets (song, ...) by isrcs
    mapping (bytes16 => Asset) public assets;

    event Played(bytes16 iswc, address artist, address diffuser, bytes16 context);

    function Database() {
    }

    function newSacem(address sacem, bytes16 _country) {
        sacems[_country] = sacem;
    }

    function newArtist(address artist, bytes16 _ipi) {
        artists[_ipi] = artist;
    }

    function newAsset(bytes16 _isrc,
                      bytes16 _iswc,
                      bytes16 _ipi,
                      bytes16 _country) public {
        assets[_isrc] = Asset(_iswc, artists[_ipi], sacems[_country]);
    }

    function play(address _diffuser, bytes16 _context, bytes16 _isrc) {
        Asset asset = assets[_isrc];
        Played(asset.iswc, asset.artist, _diffuser, _context);
    }
}
