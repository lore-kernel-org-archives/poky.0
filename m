Subject: Pulseaudio is not spawned(automatically) when connecting to bluetooth audio device in rpi 3b+
To: poky@lists.yoctoproject.org
From: emailankur.agarwal@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (106.51.110.1)
X-Originating-Platform: Mac Safari 13
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 20 May 2020 09:03:15 -0700
Message-ID: <i7VG.1589990595755369221.mc3S@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mNdaFihjYCe4x03lIVaL"

--mNdaFihjYCe4x03lIVaL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to include bluetooth and pulseaudio module in yocto build that =
will run on rpi-3 b+.

/etc/pulse/default.pa contains:
module-bluetooth-policy
module-bluez5-device
module-bluez5-discover

Here is what I am able to achieve:
Run:
pulseaudio --system
pulseaudio --start

In bluetoothctl:
power on
default-agent
pair 30:C0:1B:31:ED:5D
{pair successful}
connect 30:C0:1B:31:ED:5D
{connection is successful}

If I DONT run pulseaudio --system && pulseaudio --start;
In bluetoothctl, pair is succesful but connect failed with error:

connect 30:C0:1B:31:ED:5D
Attempting to connect to 30:C0:1B:31:ED:5D
Failed to connect: org.bluez.Error.Failed

/var/log/message:
a2dp-sink profile connect failed for 30:C0:1B:31:ED:5D: Protocol not avail=
able

According to "https://wiki.archlinux.org/index.php/Bluetooth_headset" :
"It can also be due to permission, especially if starting pulseaudio as ro=
ot allows you to connect. Add your user to the lp group, then restart pulse=
audio. See /etc/dbus-1/system.d/bluetooth.conf for reference."

Further steps:
a. Added root and pulse to "lp" group : Connect failed again with same err=
or
b. Ran command: pactl load-module module-bluetooth-discover:=C2=A0The devi=
ce connected and disconnected after few seconds.
journalct l:
pulseaudio[1837]: We are idle, quitting...
systemd-journald[92]: Forwarding to syslog missed 1064 messages.
pulseaudio[1837]: Daemon shutdown initiated.
c. set =C2=A0exit-idle-time =3D -1 in /etc/pulse/daemon.conf
d. Ran command: pactl load-module module-bluetooth-discover.
In bluetoothctl:
connect 30:C0:1B:31:ED:5D
Attempting to connect to 30:C0:1B:31:ED:5D
Device 30:C0:1B:31:ED:5D Connected: yes
Connection successful
Device 30:C0:1B:31:ED:5D ServicesResolved: yes
Connection was successful and no disconnects.

Is there anyway I can avoid running manual commands (pulseaudio --system, =
pulseaudio --start, pactl load-module module-bluetooth-discover)to invoke p=
ulseaudio?
Since everything runs in root, it there any mismatch of user/group between=
 pulsaudio and bluetooth?

--mNdaFihjYCe4x03lIVaL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am trying to include bluetooth and pulseaudio module in yocto build =
that will run on rpi-3 b+.</div>
<div>&nbsp;</div>
<div>/etc/pulse/default.pa contains:</div>
<div>module-bluetooth-policy</div>
<div>module-bluez5-device</div>
<div>module-bluez5-discover</div>
<div>&nbsp;</div>
<div>Here is what I am able to achieve:&nbsp;<br />Run:</div>
<div>&nbsp; &nbsp; pulseaudio --system</div>
<div>&nbsp; &nbsp; pulseaudio --start</div>
<div><br />In bluetoothctl:</div>
<div>&nbsp; &nbsp; power on</div>
<div>&nbsp; &nbsp; default-agent</div>
<div>&nbsp; &nbsp; pair 30:C0:1B:31:ED:5D</div>
<div>&nbsp; &nbsp; &nbsp; {pair successful}</div>
<div>&nbsp; &nbsp; connect 30:C0:1B:31:ED:5D</div>
<div>&nbsp; &nbsp; &nbsp; {connection is successful}</div>
<div><br />If I DONT run pulseaudio --system &amp;&amp; pulseaudio --start=
;</div>
<div>In bluetoothctl, pair is succesful but connect failed with error:</di=
v>
<div>&nbsp;</div>
<div>connect 30:C0:1B:31:ED:5D</div>
<div>Attempting to connect to 30:C0:1B:31:ED:5D</div>
<div>Failed to connect: org.bluez.Error.Failed</div>
<div>&nbsp;</div>
<div>/var/log/message:</div>
<div>a2dp-sink profile connect failed for 30:C0:1B:31:ED:5D: Protocol not =
available</div>
<div>&nbsp;</div>
<div>According to "https://wiki.archlinux.org/index.php/Bluetooth_headset"=
 :</div>
<div>"It can also be due to permission, especially if starting pulseaudio =
as root allows you to connect. Add your user to the lp group, then restart =
pulseaudio. See /etc/dbus-1/system.d/bluetooth.conf for reference."&nbsp;</=
div>
<div>&nbsp;</div>
<div>Further steps:</div>
<div>a. Added root and pulse to "lp" group : Connect failed again with sam=
e error</div>
<div>b. Ran command: pactl load-module module-bluetooth-discover:&nbsp;The=
 device connected and disconnected after few seconds.</div>
<div>&nbsp; &nbsp; journalct l: &nbsp;</div>
<div>&nbsp; &nbsp; pulseaudio[1837]: We are idle, quitting...</div>
<div>&nbsp; &nbsp; systemd-journald[92]: Forwarding to syslog missed 1064 =
messages.</div>
<div>&nbsp; &nbsp; pulseaudio[1837]: Daemon shutdown initiated.</div>
<div>c. set &nbsp;exit-idle-time =3D -1 in /etc/pulse/daemon.conf</div>
<div>d. Ran command: pactl load-module module-bluetooth-discover.<br />&nb=
sp; &nbsp; In bluetoothctl:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; connect 30:C0:1B:31:ED:5D</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; Attempting to connect to 30:C0:1B:31:ED:5=
D</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; Device 30:C0:1B:31:ED:5D Connected: yes</=
div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; Connection successful</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; Device 30:C0:1B:31:ED:5D ServicesResolved=
: yes</div>
<div>&nbsp; &nbsp; Connection was successful and no disconnects.</div>
<div>&nbsp;</div>
<div>Is there anyway I can avoid running manual commands (pulseaudio --sys=
tem, pulseaudio --start, pactl load-module module-bluetooth-discover)to inv=
oke pulseaudio?</div>
<div>Since everything runs in root, it there any mismatch of user/group be=
tween pulsaudio and bluetooth?</div>

--mNdaFihjYCe4x03lIVaL--
