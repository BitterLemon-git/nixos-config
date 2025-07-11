{
  services.zapret = {
    enable = true;
    params = [
      "--filter-udp=443"
      ''--hostlist="${./list-general.txt}"''
      "--dpi-desync=fake"
      "--dpi-desync-repeats=6"
      ''--dpi-desync-fake-quic="${./bin/quic_initial_www_google_com.bin}"''
      "--new"

      "--filter-udp=50000-50100"
      ''--ipset="${./ipset-discord.txt}"''
      "--dpi-desync=fake"
      "--dpi-desync-any-protocol"
      "--dpi-desync-cutoff=d3"
      "--dpi-desync-repeats=6"
      "--new"

      "--filter-tcp=80"
      ''--hostlist="${./list-general.txt}"''
      "--dpi-desync=fake,split2"
      "--dpi-desync-autottl=2"
      "--dpi-desync-fooling=md5sig"
      "--new"

      "--filter-tcp=443"
      ''--hostlist="${./list-general.txt}"''
      "--dpi-desync=split2"
      "--dpi-desync-split-seqovl=652"
      "--dpi-desync-split-pos=2"
      ''--dpi-desync-split-seqovl-pattern="${./bin/tls_clienthello_www_google_com.bin}"''
    ];
  };
}
