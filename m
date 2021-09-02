Subject: [meta-clang] Failure add clang to SDK on hardknott
To: poky@lists.yoctoproject.org
From: "Piotr" <piotr.piwko@gmail.com>
X-Originating-Location: Wroclaw, Lower Silesia, PL (185.75.1.34)
X-Originating-Platform: Linux Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Sep 2021 00:39:20 -0700
Message-ID: <D04j.1630568360725298708.KKKu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CpDn0iJJwB5Q8p0o1g0X"

--CpDn0iJJwB5Q8p0o1g0X
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

After switching to hardknott branches (poky=C2=A014c5392fde, meta-clang=C2=
=A0b0d8050) I'm not able to add successfully clang compiler to SDK. There a=
re some undefined references to tinfo during build:

| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `keyok@NCU=
RSES_TINFO_5.0.19991023'
| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `raw@NCURS=
ES_TINFO_5.0.19991023'
| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_add_t=
o_try@NCURSES_TINFO_5.0.19991023'
| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_get_s=
creensize@NCURSES_TINFO_5.7.20081102'
| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_get_l=
ocale@NCURSES_TINFO_5.4.20040208'
| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `SP@NCURSE=
S_TINFO_5.0.19991023'
| ...
| clang-12: error: linker command failed with exit code 1 (use -v to see in=
vocation)
| ninja: build stopped: subcommand failed.

On the gatesgarth branch everything compiles fine, so I suppose that someth=
ing should be added to make it works on the current version. Have you met s=
uch a problem or have any idea what may be wrong?

Thanks in advance,

--
Piotr Piwko

--CpDn0iJJwB5Q8p0o1g0X
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,&nbsp;<br /><br />After switching to hardknott branches (poky&nbsp;14c53=
92fde, meta-clang&nbsp;b0d8050) I'm not able to add successfully clang comp=
iler to SDK. There are some undefined references to tinfo during build:<br =
/><br />
<div>| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `keyo=
k@NCURSES_TINFO_5.0.19991023'</div>
<div>| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `raw@=
NCURSES_TINFO_5.0.19991023'</div>
<div>| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_=
add_to_try@NCURSES_TINFO_5.0.19991023'</div>
<div>| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_=
get_screensize@NCURSES_TINFO_5.7.20081102'</div>
<div>| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `_nc_=
get_locale@NCURSES_TINFO_5.4.20040208'</div>
<div>| //lib/x86_64-linux-gnu/libncurses.so.5: undefined reference to `SP@N=
CURSES_TINFO_5.0.19991023'</div>
<div>| ...</div>
<div>| clang-12: error: linker command failed with exit code 1 (use -v to s=
ee invocation)</div>
<div>| ninja: build stopped: subcommand failed.<br /><br />On the gatesgart=
h branch everything compiles fine, so I suppose that something should be ad=
ded to make it works on the current version. Have you met such a problem or=
 have any idea what may be wrong?<br /><br />Thanks in advance,<br /><br />=
--&nbsp;<br />Piotr Piwko</div>

--CpDn0iJJwB5Q8p0o1g0X--
