Return-Path: <akshat.embedded@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D7514C800AB
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 03:55:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so726480qwj.35
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 01:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:x-goomoji-body:date:message-id:subject:from:to
	:content-type; bh=515L5iprYvGQUI4nJpZeYouibjHbDAgDYZDrn/SMrtY=;
	b=R1bnEqPaOARkEeKdGNxIG4EuhGE9ouA/yr53tisGM+6qnXZCrgvZF4tmqvJ8VfBiIf
	GMBiPCdC/J6Ymh03d+O+6XpVqCBFJ8gPH6zXi92EcyFReegabXomqPioCuh6Xq7kkD2N
	7Yu01F0LFeHc6wHowloNk/a1FQcuUMnWTdGTo=
MIME-Version: 1.0
Received: by 10.229.202.106 with SMTP id fd42mr394363qcb.30.1309337744670;
	Wed, 29 Jun 2011 01:55:44 -0700 (PDT)
Received: by 10.229.92.3 with HTTP; Wed, 29 Jun 2011 01:55:44 -0700 (PDT)
X-Goomoji-Body: true
Date: Wed, 29 Jun 2011 14:25:44 +0530
Message-ID: <BANLkTi=0LjMdJAKGHPJGGhQiCdZnFtgD=Q@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: poky@yoctoproject.org
Subject: Problem getting PulseAudio Server Binaries
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
X-List-Received-Date: Wed, 29 Jun 2011 08:55:45 -0000
X-Groupsio-MsgNum: 6667
Content-Type: multipart/related; boundary=0016e6d27683297f0e04a6d5f3bd

--0016e6d27683297f0e04a6d5f3bd
Content-Type: multipart/alternative; boundary=0016e6d27683297f0904a6d5f3bc

--0016e6d27683297f0904a6d5f3bc
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I am trying to pull PulseAudio.
But am able to get *conf(/usr/share/pulseaudio)* files only in my RFS.
In the pulseaudio.inc file, it can be observed below that there are some
function and parametres specific to *pulseaudio-server package . Can anyone
guide me on how to get other pulseaudio binaries and configs into my build**
.*

*I am using Ubuntu 10.10, 64-bit Host machine.
Building for MACHINE?="fishriver"
*
*Command used to build:*
$ bitbake poky-image-minimal-xyz-live

*Contents of the poky-image-minimal-xyz.bb :*
require recipes-core/images/poky-image-minimal.bb
IMAGE_INSTALL += "pulseaudio"
LICENSE = "MIT"

*Excrepts from pulseaudio.inc, for quick reference :*
:
:
PACKAGES =+ "libpulsecore libpulsecommon libpulsedsp libpulse
libpulse-simple libpulse-browse libpulse-mainloop-glib \
             *pulseaudio-server *pulseaudio-misc pulseaudio-gconf-helper"

#upgrade path:
*RREPLACES_pulseaudio-server = "libpulse-bin libpulse-conf"*

PACKAGES_DYNAMIC = "pulseaudio-lib* pulseaudio-module* libpulse-lib*
libpulse-module* "

FILES_libpulsecore = "${libdir}/libpulsecore*.so"
FILES_libpulsecommon = "${libdir}/libpulsecommon*.so"
FILES_libpulsedsp = "${libdir}/libpulsedsp*.so"
FILES_libpulse = "${libdir}/libpulse.so.*"
FILES_libpulse-simple = "${libdir}/libpulse-simple.so.*"
FILES_libpulse-browse = "${libdir}/libpulse-browse.so.*"
FILES_libpulse-mainloop-glib = "${libdir}/libpulse-mainloop-glib.so.*"

FILES_${PN}-dbg += "${libexecdir}/pulse/.debug \
                    ${libdir}/pulse-${PV}/modules/.debug"
FILES_${PN}-dev += "${libdir}/pulse-${PV}/modules/*.la"
*FILES_${PN}-conf = "${sysconfdir}"*
FILES_${PN}-bin = "${bindir}/* \
                   ${sysconfdir}/default/volatiles/volatiles.04_pulse"
FILES_${PN}-server = "${bindir}/pulseaudio ${bindir}/start-* ${sysconfdir}
${bindir}/pactl"
FILES_${PN}-gconf-helper = "${libexecdir}/pulse/gconf-helper"
FILES_${PN}-misc = "${bindir}/*"

# Allow the pulseaudio package to be created empty as a placeholder (-dbg
and -dev depend on it)
ALLOW_EMPTY_${PN} = "1"

*CONFFILES_pulseaudio-server = "\ *
  ${sysconfdir}/pulse/default.pa \
  ${sysconfdir}/pulse/daemon.conf \
  ${sysconfdir}/pulse/client.conf \
  "

*pkg_postinst_${PN}-server() {*
        # can't do this offline
        if [ "x$D" != "x" ]; then
                exit 1
        fi
        grep -q pulse: /etc/group || addgroup pulse
        grep -q pulse: /etc/passwd || \
            adduser --disabled-password --home=/var/run/pulse --system \
                    --ingroup pulse --no-create-home -g "Pulse audio daemon"
pulse
        addgroup pulse audio
        /etc/init.d/populate-volatile.sh update
}

*pkg_postrm_${PN}-server() {*
        deluser pulse || true
}

python populate_packages_prepend() {
        #bb.data.setVar('PKG_pulseaudio', 'pulseaudio', d)

        plugindir = bb.data.expand('${libdir}/pulse-${PV}/modules/', d)
        do_split_packages(d, plugindir, '^module-(.*)\.so$',
'pulseaudio-module-%s', 'PulseAudio module for %s', extra_depends='' )
        do_split_packages(d, plugindir, '^lib(.*)\.so$',
'pulseaudio-lib-%s', 'PulseAudio library for %s', extra_depends='' )
}

RDEPENDS_pulseaudio-module-console-kit =+ "consolekit"
RDEPENDS_pulseaudio-module-hal_detect =+ "hal"
*RDEPENDS_pulseaudio-server = " \*
    pulseaudio-module-device-restore \
    pulseaudio-module-stream-restore \
    pulseaudio-module-card-restore \
    pulseaudio-module-augment-properties \
    pulseaudio-module-detect \
    pulseaudio-module-alsa-sink \
    pulseaudio-module-alsa-source \
    pulseaudio-module-alsa-card \
    pulseaudio-module-native-protocol-unix \
    pulseaudio-module-hal-detect \
    pulseaudio-module-default-device-restore \
    pulseaudio-module-rescue-streams \
    pulseaudio-module-always-sink \
    pulseaudio-module-suspend-on-idle \
    pulseaudio-module-console-kit \
    pulseaudio-module-position-event-sounds \
    pulseaudio-module-cork-music-on-phone "
*
*

-- 
Thanks In Advance [?]
Akshat

--0016e6d27683297f0904a6d5f3bc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,<br><br>I am trying to pull PulseAudio.<br>But am able to get <b>con=
f(/usr/share/pulseaudio)</b> files only in my RFS.<br>In the pulseaudio.inc=
 file, it can be observed below that there are some function and parametres=
 specific to <i><b>pulseaudio-server </b>package . <b>Can anyone guide me o=
n how to get other pulseaudio binaries and configs into my build</b></i><b>=
.</b><br>
<br><b>I am using Ubuntu 10.10, 64-bit Host machine.<br>Building for MACHIN=
E?=3D&quot;fishriver&quot;<br></b><br><b>Command used to build:</b><br><spa=
n style=3D"font-family: courier new,monospace;">$ bitbake poky-image-minima=
l-xyz-live</span><br>
<br><b>Contents of the <a href=3D"http://poky-image-minimal-xyz.bb">poky-im=
age-minimal-xyz.bb</a> :</b><br><span style=3D"font-family: courier new,mon=
ospace;">require recipes-core/images/<a href=3D"http://poky-image-minimal.b=
b">poky-image-minimal.bb</a></span><br style=3D"font-family: courier new,mo=
nospace;">
<span style=3D"font-family: courier new,monospace;">IMAGE_INSTALL +=3D &quo=
t;pulseaudio&quot; </span><br style=3D"font-family: courier new,monospace;"=
><span style=3D"font-family: courier new,monospace;">LICENSE =3D &quot;MIT&=
quot;</span><br>
<br><b>Excrepts from pulseaudio.inc, for quick reference :</b><br>:<br>:<br=
><span style=3D"font-family: courier new,monospace;">PACKAGES =3D+ &quot;li=
bpulsecore libpulsecommon libpulsedsp libpulse libpulse-simple libpulse-bro=
wse libpulse-mainloop-glib \</span><br style=3D"font-family: courier new,mo=
nospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 </span><b style=3D"font-family: courier new,monospace;"><fo=
nt size=3D"2">pulseaudio-server</font> </b><span style=3D"font-family: cour=
ier new,monospace;">pulseaudio-misc pulseaudio-gconf-helper&quot;</span><br=
 style=3D"font-family: courier new,monospace;">
<br style=3D"font-family: courier new,monospace;"><span style=3D"font-famil=
y: courier new,monospace;">#upgrade path:</span><br style=3D"font-family: c=
ourier new,monospace;"><b style=3D"font-family: courier new,monospace;">RRE=
PLACES_pulseaudio-server =3D &quot;libpulse-bin libpulse-conf&quot;</b><br =
style=3D"font-family: courier new,monospace;">
<br style=3D"font-family: courier new,monospace;"><span style=3D"font-famil=
y: courier new,monospace;">PACKAGES_DYNAMIC =3D &quot;pulseaudio-lib* pulse=
audio-module* libpulse-lib* libpulse-module* &quot;</span><br style=3D"font=
-family: courier new,monospace;">
<br style=3D"font-family: courier new,monospace;"><span style=3D"font-famil=
y: courier new,monospace;">FILES_libpulsecore =3D &quot;${libdir}/libpulsec=
ore*.so&quot;</span><br style=3D"font-family: courier new,monospace;"><span=
 style=3D"font-family: courier new,monospace;">FILES_libpulsecommon =3D &qu=
ot;${libdir}/libpulsecommon*.so&quot;</span><br style=3D"font-family: couri=
er new,monospace;">
<span style=3D"font-family: courier new,monospace;">FILES_libpulsedsp =3D &=
quot;${libdir}/libpulsedsp*.so&quot;</span><br style=3D"font-family: courie=
r new,monospace;"><span style=3D"font-family: courier new,monospace;">FILES=
_libpulse =3D &quot;${libdir}/libpulse.so.*&quot;</span><br style=3D"font-f=
amily: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">FILES_libpulse-simple =
=3D &quot;${libdir}/libpulse-simple.so.*&quot;</span><br style=3D"font-fami=
ly: courier new,monospace;"><span style=3D"font-family: courier new,monospa=
ce;">FILES_libpulse-browse =3D &quot;${libdir}/libpulse-browse.so.*&quot;</=
span><br style=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">FILES_libpulse-mainloop=
-glib =3D &quot;${libdir}/libpulse-mainloop-glib.so.*&quot;</span><br style=
=3D"font-family: courier new,monospace;"><br style=3D"font-family: courier =
new,monospace;">
<span style=3D"font-family: courier new,monospace;">FILES_${PN}-dbg +=3D &q=
uot;${libexecdir}/pulse/.debug \</span><br style=3D"font-family: courier ne=
w,monospace;"><span style=3D"font-family: courier new,monospace;">=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${libdir}/pulse-${PV}/modu=
les/.debug&quot;</span><br style=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">FILES_${PN}-dev +=3D &q=
uot;${libdir}/pulse-${PV}/modules/*.la&quot;</span><br style=3D"font-family=
: courier new,monospace;"><b style=3D"font-family: courier new,monospace;">=
FILES_${PN}-conf =3D &quot;${sysconfdir}&quot;</b><br style=3D"font-family:=
 courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">FILES_${PN}-bin =3D &qu=
ot;${bindir}/* \</span><br style=3D"font-family: courier new,monospace;"><s=
pan style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${sysconfdir}/default/volatiles/volatiles.04=
_pulse&quot;</span><br style=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">FILES_${PN}-server =3D =
&quot;${bindir}/pulseaudio ${bindir}/start-* ${sysconfdir} ${bindir}/pactl&=
quot;</span><br style=3D"font-family: courier new,monospace;"><span style=
=3D"font-family: courier new,monospace;">FILES_${PN}-gconf-helper =3D &quot=
;${libexecdir}/pulse/gconf-helper&quot;</span><br style=3D"font-family: cou=
rier new,monospace;">
<span style=3D"font-family: courier new,monospace;">FILES_${PN}-misc =3D &q=
uot;${bindir}/*&quot;</span><br style=3D"font-family: courier new,monospace=
;"><br style=3D"font-family: courier new,monospace;"><span style=3D"font-fa=
mily: courier new,monospace;"># Allow the pulseaudio package to be created =
empty as a placeholder (-dbg and -dev depend on it)</span><br style=3D"font=
-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">ALLOW_EMPTY_${PN} =3D &=
quot;1&quot;</span><br style=3D"font-family: courier new,monospace;"><br st=
yle=3D"font-family: courier new,monospace;"><b style=3D"font-family: courie=
r new,monospace;">CONFFILES_pulseaudio-server =3D &quot;\ </b><br style=3D"=
font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0 ${sysconfdir}/pulse=
/<a href=3D"http://default.pa">default.pa</a> \</span><br style=3D"font-fam=
ily: courier new,monospace;"><span style=3D"font-family: courier new,monosp=
ace;">=A0 ${sysconfdir}/pulse/daemon.conf \</span><br style=3D"font-family:=
 courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0 ${sysconfdir}/pulse=
/client.conf \</span><br style=3D"font-family: courier new,monospace;"><spa=
n style=3D"font-family: courier new,monospace;">=A0 &quot;</span><br style=
=3D"font-family: courier new,monospace;">
<br style=3D"font-family: courier new,monospace;"><b style=3D"font-family: =
courier new,monospace;">pkg_postinst_${PN}-server() {</b><br style=3D"font-=
family: courier new,monospace;"><span style=3D"font-family: courier new,mon=
ospace;">=A0=A0=A0=A0=A0=A0=A0 # can&#39;t do this offline</span><br style=
=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 i=
f [ &quot;x$D&quot; !=3D &quot;x&quot; ]; then</span><br style=3D"font-fami=
ly: courier new,monospace;"><span style=3D"font-family: courier new,monospa=
ce;">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 exit 1</span><br style=
=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 f=
i</span><br style=3D"font-family: courier new,monospace;"><span style=3D"fo=
nt-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 grep -q pulse: /et=
c/group || addgroup pulse</span><br style=3D"font-family: courier new,monos=
pace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 g=
rep -q pulse: /etc/passwd || \</span><br style=3D"font-family: courier new,=
monospace;"><span style=3D"font-family: courier new,monospace;">=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 adduser --disabled-password --home=3D/var/run/puls=
e --system \</span><br style=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 --ingroup pulse --no-create-home -g &q=
uot;Pulse audio daemon&quot; pulse</span><br style=3D"font-family: courier =
new,monospace;"><span style=3D"font-family: courier new,monospace;">=A0=A0=
=A0=A0=A0=A0=A0 addgroup pulse audio</span><br style=3D"font-family: courie=
r new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 /=
etc/init.d/populate-volatile.sh update</span><br style=3D"font-family: cour=
ier new,monospace;"><span style=3D"font-family: courier new,monospace;">}</=
span><br style=3D"font-family: courier new,monospace;">
<br style=3D"font-family: courier new,monospace;"><b style=3D"font-family: =
courier new,monospace;">pkg_postrm_${PN}-server() {</b><br style=3D"font-fa=
mily: courier new,monospace;"><span style=3D"font-family: courier new,monos=
pace;">=A0=A0=A0=A0=A0=A0=A0 deluser pulse || true</span><br style=3D"font-=
family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">}</span><br style=3D"fo=
nt-family: courier new,monospace;"><br style=3D"font-family: courier new,mo=
nospace;"><span style=3D"font-family: courier new,monospace;">python popula=
te_packages_prepend() {</span><br style=3D"font-family: courier new,monospa=
ce;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 #=
bb.data.setVar(&#39;PKG_pulseaudio&#39;, &#39;pulseaudio&#39;, d)</span><br=
 style=3D"font-family: courier new,monospace;"><br style=3D"font-family: co=
urier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 p=
lugindir =3D bb.data.expand(&#39;${libdir}/pulse-${PV}/modules/&#39;, d)</s=
pan><br style=3D"font-family: courier new,monospace;"><span style=3D"font-f=
amily: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 do_split_packages(d, p=
lugindir, &#39;^module-(.*)\.so$&#39;, &#39;pulseaudio-module-%s&#39;, &#39=
;PulseAudio module for %s&#39;, extra_depends=3D&#39;&#39; )</span><br styl=
e=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0=A0=A0=A0=A0 d=
o_split_packages(d, plugindir, &#39;^lib(.*)\.so$&#39;, &#39;pulseaudio-lib=
-%s&#39;, &#39;PulseAudio library for %s&#39;, extra_depends=3D&#39;&#39; )=
</span><br style=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">}</span><br style=3D"fo=
nt-family: courier new,monospace;"><br style=3D"font-family: courier new,mo=
nospace;"><span style=3D"font-family: courier new,monospace;">RDEPENDS_puls=
eaudio-module-console-kit =3D+ &quot;consolekit&quot;</span><br style=3D"fo=
nt-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">RDEPENDS_pulseaudio-mod=
ule-hal_detect =3D+ &quot;hal&quot;</span><br style=3D"font-family: courier=
 new,monospace;"><b style=3D"font-family: courier new,monospace;">RDEPENDS_=
pulseaudio-server =3D &quot; \</b><br style=3D"font-family: courier new,mon=
ospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-device-restore \</span><br style=3D"font-family: courier new,monospace=
;"><span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio=
-module-stream-restore \</span><br style=3D"font-family: courier new,monosp=
ace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-card-restore \</span><br style=3D"font-family: courier new,monospace;"=
><span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-m=
odule-augment-properties \</span><br style=3D"font-family: courier new,mono=
space;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-detect \</span><br style=3D"font-family: courier new,monospace;"><span=
 style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-module-=
alsa-sink \</span><br style=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-alsa-source \</span><br style=3D"font-family: courier new,monospace;">=
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-alsa-card \</span><br style=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-native-protocol-unix \</span><br style=3D"font-family: courier new,mon=
ospace;"><span style=3D"font-family: courier new,monospace;">=A0=A0=A0 puls=
eaudio-module-hal-detect \</span><br style=3D"font-family: courier new,mono=
space;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-default-device-restore \</span><br style=3D"font-family: courier new,m=
onospace;"><span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pu=
lseaudio-module-rescue-streams \</span><br style=3D"font-family: courier ne=
w,monospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-always-sink \</span><br style=3D"font-family: courier new,monospace;">=
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-suspend-on-idle \</span><br style=3D"font-family: courier new,monospac=
e;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-console-kit \</span><br style=3D"font-family: courier new,monospace;">=
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-position-event-sounds \</span><br style=3D"font-family: courier new,mo=
nospace;">
<span style=3D"font-family: courier new,monospace;">=A0=A0=A0 pulseaudio-mo=
dule-cork-music-on-phone &quot;</span><br style=3D"font-family: courier new=
,monospace;"><i><br></i><br clear=3D"all"><br>-- <br>Thanks In Advance <img=
 goomoji=3D"gtalk.328" style=3D"margin: 0pt 0.2ex; vertical-align: middle;"=
 src=3D"cid:gtalk.328@goomoji.gmail"><br>
<div><span style=3D"color:rgb(51, 51, 51);font-family:georgia, serif">Aksha=
t=A0</span></div><div><br></div><br>

--0016e6d27683297f0904a6d5f3bc--

--0016e6d27683297f0e04a6d5f3bd
Content-Type: image/png; name="328.png"
Content-Transfer-Encoding: base64
X-Attachment-Id: gtalk.328@goomoji.gmail
Content-ID: <gtalk.328@goomoji.gmail>

iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAABGdBTUEAANbY1E9YMgAAAfBJREFU
KM+VUs9LVGEUfX+AovlmHEtnahG2MLBlmBGkyIwEQU3mtBFFLNNa2FKobf7+2WBFQ7SrhaswS6VJ
F9LCBDGnHCufIpWNGiSE3Hnf8d5vmBmDXLg4fIf7vvPuuee7BgAjCeo55KCOzFt8vqQHrigFXUvM
R7jWwqdr7920qCvLF7ufs2GPnob66AesGg21cAX2mxJstJu/qTPr0j9CFnnpYf5fuYTNZiB2E1i/
kYDwrWaoT1cRf+wmvntRC9mCSX3mWkr0o+H/2GyC+lwN6nfGWHPYYP+3xd7ws0oUF5k4ddLE80fl
KcFwqCJdD3lhj50Ba1ql4yuZyVfuwez4Zcy99cN73p0S+pin655E1z7zncHpfdFByDz72Uzi53Vg
tRY0dGTZoGDeAYV1IrTE6msdTKwRK6Ol+4r0t1+NUIva6pSE0yLvJInODh3D/NNCfA+X4c+8X0O4
1D4E3fqOPXFWwrknHZ004LCk685yDayREsw9OY7pDgfed+VqLrWdlVqo6DXQgHOLurMLEgvQlnEn
/qJIP7TNs9JaPbYXqjSE22IxGkA8dFTx9lQnF+AE9TsiauYCVKQKdvic3hJJT6AWAwl7g851FgVS
K8fCBhrMjfDfLOrNmaT2zB4efoKT+8r4xjzMM91le569S74LIbokkvwws6oAAAAASUVORK5CYII=

--0016e6d27683297f0e04a6d5f3bd--
