Subject: Re: Azure Devops repo URL support ? #poky
To: poky@lists.yoctoproject.org
From: "BELHADJ SALEM Talel" <talel.hajsalem@sofia-technologies.com>
X-Originating-Location: TN (193.95.99.62)
X-Originating-Platform: Linux Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Nov 2022 06:51:59 -0800
References: <d13ad92a8d9d4e5d697820fcdbb03dddf8622920.camel@linuxfoundation.org>
In-Reply-To: <d13ad92a8d9d4e5d697820fcdbb03dddf8622920.camel@linuxfoundation.org>
Message-ID: <29070.1669647119522002902@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vrbByBV9oqyUDUAP3zU2"

--vrbByBV9oqyUDUAP3zU2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is the error for the format:

SRC_URI =3D "git://git@ssh.dev.azure.com:v3/WITTI/(Embedded)%20Gateways/sof=
iatech_Gateway_setup;protocol=3Dssh;branch=3Ddev"

>=20
> ERROR : witti-gw-config-git-r22 do_fetch: Fetcher failure: Fetch command
> export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
> SSH_AGENT_PID=3D"1695";
> export SSH_AUTH_SOCK=3D"/tmp/ssh-LYWJXxMijRIZ/agent.1632"; export
> PATH=3D"/home/talel/Desktop/YoctoWork/maie/witti-embedded/build/tmp/sysro=
ots-uninative/x86_64-linux/usr/bin:/home/talel/Desktop/Y
>=20
> octoWork/maie/witti-embedded/layers/poky/scripts:/home/talel/Desktop/Yoct=
oWork/maie/witti-embedded/build/tmp/work/all-poky-linux/witti-gw-config/git=
-r22/recipe-sysroot-native/usr/bin/allarch-
>=20
> poky-linux:/home/talel/Desktop/YoctoWork/maie/witti-embedded/build/tmp/wo=
rk/all-poky-linux/witti-gw-config/git-r22/recipe-sysroot/usr/bin/crossscrip=
ts:/home/talel/Desktop/YoctoWork/maie/witti-embedded/build/tmp/work/all-pok=
y-linux/witti-gw-config/git-r22/recipe-sysroot-native/usr/sbin:/home/talel/=
Desktop/YoctoWork/maie/witti-embedded/build/tmp/work/all-poky-linux/witti-g=
w-config/git-r22/recipe-sysroot-native/usr/bin:/home/talel/Desktop/YoctoWor=
k/maie/witti-embedded/build/tmp/work/all-poky-linux/witti-gw-config/git-r22=
/recipe-sysrootnative/sbin:/home/talel/Desktop/Yo
>=20
> ctoWork/maie/witti-embedded/build/tmp/work/all-poky-linux/witti-gw-config=
/git-r22/recipe-sysroot-native/bin:/home/talel/Desktop/YoctoWork/maie/witti=
-embedded/layers/poky/bitbake/bin:/home/talel/Desktop/YoctoWork/maie/witti-=
embedded/build/tmp/hosttools";
> export HOME=3D"/home/talel"; LANG=3DC git -c core.fsyncobjectfiles=3D0 cl=
one
> --bare --mirror "ssh://git@ssh.dev.azure.com:v3/WITTI/(Em
> bedded) Gateways/sofiatech_Gateway_setup"
> /home/talel/Desktop/YoctoWork/maie/witti-embedded/build/downloads/git2/ss=
h.dev.azure.com.v3.WITTI.(Embedded)_Gateways.sofiatech_Gateway_setup
> --progr
> ess failed with exit code 2, no output
> ERROR : witti-gw-config-git-r22 do_fetch: Bitbake Fetcher Error:
> FetchError('Unable to fetch URL from any source.',
> 'git://git@ssh.dev.azure.com:v3/WITTI/(Embedded)%20Gateways/sofiatech_Gat=
ewa
>=20
> y_setup;protocol=3Dssh;branch=3Ddev')
>=20

This is the same error for all combinations:

>=20
>=20
>> sofiatech_Gateway_setup;protocol=3Dssh;branch=3Ddev"
>=20
>=20
>> SRC_URI =3D
>> "git://WITTI@ssh.dev.azure.com/v3/WITTI/%28Embedded%29%20Gateways/sofiat=
ech_Gateway_setup;protocol=3Dssh;branch=3Ddev"
>>=20
>=20
>=20
>> SRC_URI =3D
>> "git://git@ssh.dev.azure.com/v3/WITTI/%28Embedded%29%20Gateways/sofiatec=
h_Gateway_setup;protocol=3Dssh;branch=3Ddev"
>>=20
>=20
>

--vrbByBV9oqyUDUAP3zU2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is the error for the format:&nbsp;<br /><br />SRC_URI =3D "git://git@s=
sh.dev.azure.com:v3/WITTI/(Embedded)%20Gateways/sofiatech_Gateway_setup;pro=
tocol=3Dssh;branch=3Ddev"<br /><br />
<blockquote><span style=3D"font-family: monospace;"><span style=3D"font-wei=
ght: bold; color: #ff5454;">ERROR</span><span style=3D"color: #000000;">: <=
/span><span style=3D"color: #b21818;">witti-gw-config-git-r22 do_fetch: Fet=
cher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION=
_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export SSH_AGENT_PID=3D"16=
95"; </span><br />export SSH_AUTH_SOCK=3D"/tmp/ssh-LYWJXxMijRIZ/agent.1632"=
; export PATH=3D"/home/talel/Desktop/YoctoWork/maie/witti-embedded/build/tm=
p/sysroots-uninative/x86_64-linux/usr/bin:/home/talel/Desktop/Y<br />octoWo=
rk/maie/witti-embedded/layers/poky/scripts:/home/talel/Desktop/YoctoWork/ma=
ie/witti-embedded/build/tmp/work/all-poky-linux/witti-gw-config/git-r22/rec=
ipe-sysroot-native/usr/bin/allarch-<br />poky-linux:/home/talel/Desktop/Yoc=
toWork/maie/witti-embedded/build/tmp/work/all-poky-linux/witti-gw-config/gi=
t-r22/recipe-sysroot/usr/bin/crossscripts:/home/talel/Desktop/YoctoWork/mai=
e/witti-embedded/build/tmp/work/all-poky-linux/witti-gw-config/git-r22/reci=
pe-sysroot-native/usr/sbin:/home/talel/Desktop/YoctoWork/maie/witti-embedde=
d/build/tmp/work/all-poky-linux/witti-gw-config/git-r22/recipe-sysroot-nati=
ve/usr/bin:/home/talel/Desktop/YoctoWork/maie/witti-embedded/build/tmp/work=
/all-poky-linux/witti-gw-config/git-r22/recipe-sysrootnative/sbin:/home/tal=
el/Desktop/Yo<br />ctoWork/maie/witti-embedded/build/tmp/work/all-poky-linu=
x/witti-gw-config/git-r22/recipe-sysroot-native/bin:/home/talel/Desktop/Yoc=
toWork/maie/witti-embedded/layers/poky/bitbake/bin:/home/talel/Desktop/Yoct=
oWork/maie/witti-embedded/build/tmp/hosttools"; export HOME=3D"/home/talel"=
; LANG=3DC git -c core.fsyncobjectfiles=3D0 clone --bare --mirror "ssh://gi=
t@ssh.dev.azure.com:v3/WITTI/(Em<br />bedded) Gateways/sofiatech_Gateway_se=
tup" /home/talel/Desktop/YoctoWork/maie/witti-embedded/build/downloads/git2=
/ssh.dev.azure.com.v3.WITTI.(Embedded)_Gateways.sofiatech_Gateway_setup --p=
rogr<br />ess failed with exit code 2, no output &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=3D=
"color: #000000;">&nbsp;</span><br /><span style=3D"font-weight: bold; colo=
r: #ff5454;">ERROR</span><span style=3D"color: #000000;">: </span><span sty=
le=3D"color: #b21818;">witti-gw-config-git-r22 do_fetch: Bitbake Fetcher Er=
ror: FetchError('Unable to fetch URL from any source.', 'git://git@ssh.dev.=
azure.com:v3/WITTI/(Embedded)%20Gateways/sofiatech_Gatewa</span><br />y_set=
up;protocol=3Dssh;branch=3Ddev')<br /></span></blockquote>
<br />This is the same error for all combinations:<br />
<blockquote>
<blockquote>sofiatech_Gateway_setup;protocol=3Dssh;branch=3Ddev"</blockquot=
e>
<blockquote>SRC_URI =3D "git://WITTI@ssh.dev.azure.com/v3/WITTI/%28Embedded=
%29%20Gateways/sofiatech_Gateway_setup;protocol=3Dssh;branch=3Ddev"</blockq=
uote>
<blockquote>SRC_URI =3D "git://git@ssh.dev.azure.com/v3/WITTI/%28Embedded%2=
9%20Gateways/sofiatech_Gateway_setup;protocol=3Dssh;branch=3Ddev"</blockquo=
te>
</blockquote>

--vrbByBV9oqyUDUAP3zU2--
