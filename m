Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 244D74C811B6
	for <poky@yoctoproject.org>; Fri, 13 May 2011 07:08:29 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 04A9516602EB; Fri, 13 May 2011 06:08:18 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D2AEE16602D7;
	Fri, 13 May 2011 06:08:15 -0600 (MDT)
Message-ID: <4DCD1F2F.7030805@mlbassoc.com>
Date: Fri, 13 May 2011 06:08:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: meta-intel
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 May 2011 12:08:31 -0000
X-Groupsio-MsgNum: 6124
Content-Type: multipart/mixed; boundary="------------050302070305040103050507"

--------------050302070305040103050507
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm using meta-intel (git://git.pokylinux.org/meta-intel.git) to
test Poky on my Atom-PC (emenlow works fine).

Where is the best place to ask for help with this?  Perhaps there
should be a README in the layer to give such guidance?

Now, to my actual question.  I'm trying to understand the strange
network behaviour I see when running qemu (see yesterday's thread).
When I build for qemuXXX, I build & run core-image-sato.  On the
real hardware (emenlow), I built core-image-sato-live, so I would
think the only difference would be the USB-live packaging.  So
why do I see such a different set of tasks running, once I log
in via X?  See attached files.

Interestingly, the network on the real system (emenlow) works
properly.  The only problem I have is that /etc/resolv.conf is
still wrong, even though I get my network address via DHCP and
the DHCP server provides DNS info.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------050302070305040103050507
Content-Type: application/postscript;
 name="emelnow.ps"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="emelnow.ps"

  PID TTY      STAT   TIME COMMAND
    1 ?        Ss     0:00 init [5]  
    2 ?        S      0:00 [kthreadd]
    3 ?        S      0:00 [ksoftirqd/0]
    4 ?        S      0:00 [kworker/0:0]
    5 ?        S      0:00 [kworker/u:0]
    6 ?        S<     0:00 [khelper]
    7 ?        S      0:00 [sync_supers]
    8 ?        S      0:00 [bdi-default]
    9 ?        S<     0:00 [kblockd]
   10 ?        S<     0:00 [kacpid]
   11 ?        S<     0:00 [kacpi_notify]
   12 ?        S<     0:00 [kacpi_hotplug]
   13 ?        S<     0:00 [ata_sff]
   14 ?        S      0:00 [khubd]
   15 ?        S      0:00 [kseriod]
   16 ?        S<     0:00 [md]
   17 ?        S<     0:00 [kmmcd]
   18 ?        S<     0:00 [rpciod]
   19 ?        S      0:00 [kworker/0:1]
   20 ?        S      0:00 [kswapd0]
   21 ?        S      0:00 [fsnotify_mark]
   22 ?        S<     0:00 [aio]
   23 ?        S<     0:00 [nfsiod]
   24 ?        S<     0:00 [crypto]
   31 ?        S      0:00 [scsi_eh_0]
   32 ?        S      0:00 [scsi_eh_1]
   33 ?        S      0:00 [kworker/u:2]
   34 ?        S<     0:00 [kpsmoused]
   35 ?        S<     0:00 [kstriped]
   36 ?        S<     0:00 [ksnapd]
   38 ?        S<     0:00 [usbhid_resumer]
   39 ?        S<     0:00 [hd-audio0]
  460 ?        S      0:00 [scsi_eh_2]
  461 ?        S      0:01 [usb-storage]
  506 ?        S<     0:02 [loop0]
  507 ?        S      0:00 [kjournald]
  538 ?        S<s    0:00 /sbin/udevd -d
  580 ?        S<     0:00 /sbin/udevd -d
  581 ?        S<     0:00 /sbin/udevd -d
  676 ?        S      0:00 [flush-7:0]
  677 ?        S      0:00 [flush-8:32]
  927 ?        Ss     0:00 udhcpc -R -n -p /var/run/udhcpc.eth0.pid -i eth0
  932 ?        Ss     0:00 /sbin/portmap
10062 ?        Ss     0:00 /usr/bin/dbus-daemon --system
10066 ?        Ssl    0:00 /usr/sbin/hald
10067 ?        S      0:00 hald-runner
10104 ?        S      0:00 hald-addon-acpi: listening on acpid socket /var/run/acpid.socket
10105 ?        S      0:00 hald-addon-storage: polling /dev/sdc (every 2 sec)
10110 ?        Ss     0:00 /usr/sbin/connmand
10113 ?        S      0:00 -sh -c \/etc\/X11\/Xserver
10115 ?        S      0:00 xinit /etc/X11/Xsession -- /usr/bin/Xorg :0 -br -pn
10117 ?        S      0:00 /usr/sbin/wpa_supplicant -u
10118 tty2     S<sl+   0:05 /usr/bin/Xorg :0 -br -pn
10141 ?        S      0:00 matchbox-window-manager -theme Sato -use_desktop_mode decorated -use_cursor yes
10145 ?        S      0:00 dbus-launch --sh-syntax --exit-with-session
10146 ?        Ss     0:00 /usr/bin/dbus-daemon --fork --print-pid 5 --print-address 7 --session
10168 ?        S      0:00 connman-applet
10189 ?        S      0:00 matchbox-desktop
10190 ?        S      0:00 matchbox-panel --titlebar --start-applets showdesktop,windowselector --end-applets clock,battery,systray,startup-notify,notify
10192 ?        S      0:00 /usr/libexec/gconfd-2
10193 ?        S      0:00 /usr/bin/settings-daemon
10198 ?        Ss     0:00 /usr/sbin/dropbear -r /etc/dropbear/dropbear_rsa_host_key -p 22
10201 ?        Ss     0:00 /usr/sbin/acpid -c /etc/acpi/events
10208 ?        Ss     0:00 /sbin/syslogd -n -C64 -m 20
10210 ?        Ss     0:00 /sbin/klogd -n
10216 ?        S      0:00 avahi-daemon: running [emenlow.local]
10217 ?        S      0:00 avahi-daemon: chroot helper
10221 ?        Ssl    0:00 /usr/sbin/tcf-agent -d -L- -l0
10227 tty1     Ss+    0:00 /sbin/getty 38400 tty1
10238 ?        Rl     0:01 matchbox-terminal
10239 ?        S      0:00 gnome-pty-helper
10240 pts/0    Ss     0:00 /bin/sh
10315 ttyS0    Ss+    0:00 /sbin/getty 115200 ttyS0
10316 pts/0    R+     0:00 ps ax

--------------050302070305040103050507
Content-Type: application/postscript;
 name="qemu.ps"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="qemu.ps"

F   UID   PID  PPID PRI  NI    VSZ   RSS WCHAN  STAT TTY        TIME COMMAND
4     0     1     0  20   0   1652   552 poll_s Ss   ?          0:06 init [5]  
1     0     2     0  20   0      0     0 kthrea S    ?          0:00 [kthreadd]
1     0     3     2  20   0      0     0 run_ks S    ?          0:00 [ksoftirqd/0]
1     0     5     2  20   0      0     0 worker S    ?          0:00 [kworker/u:0]
1     0     6     2   0 -20      0     0 rescue S<   ?          0:00 [khelper]
1     0     7     2  20   0      0     0 bdi_sy S    ?          0:00 [sync_supers]
1     0     8     2  20   0      0     0 bdi_fo S    ?          0:00 [bdi-default]
1     0     9     2   0 -20      0     0 rescue S<   ?          0:00 [kblockd]
1     0    10     2  20   0      0     0 hub_th S    ?          0:00 [khubd]
1     0    11     2  20   0      0     0 serio_ S    ?          0:00 [kseriod]
1     0    12     2   0 -20      0     0 rescue S<   ?          0:00 [md]
1     0    13     2   0 -20      0     0 rescue S<   ?          0:00 [kmmcd]
1     0    14     2   0 -20      0     0 rescue S<   ?          0:00 [rpciod]
1     0    15     2  20   0      0     0 worker S    ?          0:03 [kworker/0:1]
1     0    16     2  20   0      0     0 kswapd S    ?          0:00 [kswapd0]
1     0    17     2  20   0      0     0 fsnoti S    ?          0:00 [fsnotify_mark]
1     0    18     2   0 -20      0     0 rescue S<   ?          0:00 [aio]
1     0    19     2   0 -20      0     0 rescue S<   ?          0:00 [nfsiod]
1     0    20     2   0 -20      0     0 rescue S<   ?          0:00 [crypto]
1     0    25     2  20   0      0     0 scsi_e S    ?          0:00 [scsi_eh_0]
1     0    26     2  20   0      0     0 worker S    ?          0:00 [kworker/u:1]
1     0    27     2   0 -20      0     0 rescue S<   ?          0:00 [kpsmoused]
1     0    28     2   0 -20      0     0 rescue S<   ?          0:00 [kstriped]
1     0    29     2   0 -20      0     0 rescue S<   ?          0:00 [ksnapd]
1     0    30     2   0 -20      0     0 rescue S<   ?          0:00 [usbhid_resumer]
1     0    31     2  20   0      0     0 kjourn S    ?          0:00 [kjournald]
1     0    56     2  20   0      0     0 bdi_wr S    ?          0:00 [flush-8:0]
5     0    57     1  16  -4   1972   568 poll_s S<s  ?          0:00 /sbin/udevd -d
5     1   187     1  20   0   2592   456 poll_s Ss   ?          0:00 /sbin/portmap
5    43   207     1  20   0   3364   800 poll_s Ss   ?          0:01 /usr/bin/dbus-daemon --system
5     0   210     1  20   0   3784  1716 poll_s Ss   ?          0:03 /usr/sbin/connmand
4     0   218     1  20   0   2188   552 wait   S    ?          0:00 -sh -c \/etc\/X11\/Xserver
4     0   221     1  20   0   4820  1116 poll_s S    ?          0:00 /usr/sbin/wpa_supplicant -u
4     0   222   218  20   0   2892   644 wait   S    ?          0:00 xinit /etc/X11/Xsession -- /usr/bin/Xfbdev :0 -br -pn -keybd keyboard -mouse tslib -screen 640x480@0x16 -dpi 150 -rgba vrgb
4     0   237   222  19  -1  11080  7224 -      R<   ?          1:15 /usr/bin/Xfbdev :0 -br -pn -keybd keyboard -mouse tslib -screen 640x480@0x16 -dpi 150 -rgba vrgb
5     0   238    57  18  -2   1968   548 poll_s S<   ?          0:00 /sbin/udevd -d
5     0   239    57  18  -2   1968   548 poll_s S<   ?          0:00 /sbin/udevd -d
4     0   244   222  20   0   6464  2648 poll_s S    ?          0:04 matchbox-window-manager -theme Sato -use_desktop_mode decorated -use_cursor no
1     0   248     1  20   0   3204   548 poll_s S    ?          0:00 dbus-launch --sh-syntax --exit-with-session
1     0   249     1  20   0   3364   756 poll_s Ss   ?          0:00 /usr/bin/dbus-daemon --fork --print-pid 5 --print-address 7 --session
0     0   271   244  20   0  18900  6296 poll_s S    ?          0:05 connman-applet
0     0   292   244  20   0  19884  8580 poll_s S    ?          0:09 matchbox-desktop
0     0   293   244  20   0  20300  8332 poll_s S    ?          0:11 matchbox-panel --titlebar --start-applets showdesktop,windowselector --end-applets clock,battery,systray,startup-notify,notify
0     0   295     1  20   0   4132  1832 poll_s S    ?          0:00 /usr/libexec/gconfd-2
1     0   296     1  20   0  11344  1260 poll_s S    ?          0:00 /usr/bin/settings-daemon
1     0   304     1  20   0   2252   356 poll_s Ss   ?          0:00 /usr/sbin/dropbear -r /etc/dropbear/dropbear_rsa_host_key -p 22
1    44   313     1  25   5   2952   408 wait   SNs  ?          0:00 /usr/bin/distccd --pid-file=/var/run/distcc.pid --daemon --allow 192.168.7.0/24
1    44   314   313  25   5   2952   192 inet_c SN   ?          0:00 /usr/bin/distccd --pid-file=/var/run/distcc.pid --daemon --allow 192.168.7.0/24
1    44   325   313  25   5   2952   192 inet_c SN   ?          0:00 /usr/bin/distccd --pid-file=/var/run/distcc.pid --daemon --allow 192.168.7.0/24
1     0   326     1  20   0   2164   392 poll_s Ss   ?          0:00 /usr/sbin/rpc.mountd -f /etc/exports 
5     0   328     1  20   0   1872   736 poll_s Ss   ?          0:00 /usr/sbin/rpc.statd
1    44   330   313  25   5   2952   192 inet_c SN   ?          0:00 /usr/bin/distccd --pid-file=/var/run/distcc.pid --daemon --allow 192.168.7.0/24
0     0   334     1  20   0   2252   612 skb_re Ss   ?          0:00 /sbin/syslogd -n -C64 -m 20
4     0   336     1  20   0   2188   540 syslog Ss   ?          0:00 /sbin/klogd -n
0     0   345     1  20   0   4060  1252 poll_s S    ?          0:00 /usr/bin/oprofile-server
1     0   349     1  20   0   2132   688 futex_ Ssl  ?          0:01 /usr/sbin/tcf-agent -d -L- -l0
0     0   354     1  20   0   1908   520 n_tty_ Ss+  ttyAMA0    0:00 /sbin/getty 115200 ttyAMA0
0     0   355     1  20   0   1908   520 n_tty_ Ss+  tty1       0:00 /sbin/getty 38400 tty1
0     0   357     1  20   0  24808  6688 poll_s Sl   ?          0:46 matchbox-terminal
4     0   358   357  20   0   1848   624 unix_s S    ?          0:00 gnome-pty-helper
4     0   359   357  20   0   2364   836 wait   Ss   pts/0      0:01 /bin/sh
0     0   377     1  20   0 113372 25180 poll_s Sl   ?          0:32 web2
1     0   393     2  20   0      0     0 worker S    ?          0:00 [kworker/0:0]
4     0   429   359  20   0   2196   740 -      R+   pts/0      0:00 ps lax

--------------050302070305040103050507--
