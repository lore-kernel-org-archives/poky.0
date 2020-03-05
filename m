Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
 by mx.groups.io with SMTP id smtpd.web09.13889.1583420857157660036
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 07:07:37 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 80.237.132.155, mailfrom: rberg@berg-solutions.de)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=[10.8.0.2]); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1j9s62-0003qq-Rn; Thu, 05 Mar 2020 16:07:35 +0100
From: "Roelof" <rberg@berg-solutions.de>
Message-Id: <86622418-22C5-4C4A-A683-958A03AAC2FE@berg-solutions.de>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [poky] How to see the parameters of a shell command execution (do_rootfs, qemu, update_font_cache) ?
Date: Thu, 5 Mar 2020 16:07:32 +0100
In-Reply-To: <CANNYZj9DWd+sqT2kFAZf35dkYtFdKY4=AODTzcdtxSzZ78bfHw@mail.gmail.com>
Cc: poky@lists.yoctoproject.org
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <9BF44414-52D8-4025-BCC2-A797002C99F2@berg-solutions.de>
 <F09F2AFF-8B49-4842-A241-305538DFAA66@berg-solutions.de>
 <CANNYZj9DWd+sqT2kFAZf35dkYtFdKY4=AODTzcdtxSzZ78bfHw@mail.gmail.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1583420857;ad81a11f;
X-HE-SMSGID: 1j9s62-0003qq-Rn
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_62F25521-8432-4685-9A63-19F290EEC134"

--Apple-Mail=_62F25521-8432-4685-9A63-19F290EEC134
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Alexander,

thanks for supporting, appreciated. The log-message of the original post =
was taken from the file you=E2=80=99re interested in, from log.do_rootfs =
(see bottom). It shows that qemu is called, exits with code 1 and qemu =
repeats its own usage info. And it=E2=80=99d be interesting to know =
which command line exactly (which parameters to qemu) led to qemu =
exiting that way.

I=E2=80=99ll send a more comprehensive extract of that log in a minute, =
so you get more context ...

log.do_rootfs:
>> NOTE: Exit code 1. Output:
>> usage: qemu-arm [options] program [arguments]
>> Linux CPU emulator (compiled for arm emulation)
>>=20
>> Options and associated environment variables:
>>=20
>> Argument      Env-variable      Description
>> -h                        prints this help
>>=20
>> ...
>>=20

> Am 05.03.2020 um 15:37 schrieb Alexander Kanavin =
<alex.kanavin@gmail.com>:
>=20
> "  WARNING: The postinstall intercept hook =E2=80=9Aupdate_font_cache=E2=
=80=98 failed, details in log.do_rootfs"
>=20
> So what does log.do_rootfs say?
>=20
> Alex
>=20
>=20
>=20
> On Thu, 5 Mar 2020 at 14:46, Roelof <rberg@berg-solutions.de =
<mailto:rberg@berg-solutions.de>> wrote:
>=20
>> NOTE: Exit code 1. Output:
>> usage: qemu-arm [options] program [arguments]
>> Linux CPU emulator (compiled for arm emulation)
>>=20
>> Options and associated environment variables:
>>=20
>> Argument      Env-variable      Description
>> -h                        prints this help
>>=20
>> ...
>>=20


--Apple-Mail=_62F25521-8432-4685-9A63-19F290EEC134
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
class=3D"">Hi Alexander,</div><div class=3D""><br class=3D""></div><div =
class=3D"">thanks for supporting, appreciated. The log-message of the =
original post was taken from the file you=E2=80=99re interested in, from =
log.do_rootfs (see bottom). It shows that qemu is called, exits with =
code 1 and qemu repeats its own usage info. And it=E2=80=99d be =
interesting to know which command line exactly (which parameters to =
qemu) led to qemu exiting that way.</div><div class=3D""><br =
class=3D""></div><div class=3D"">I=E2=80=99ll send a more comprehensive =
extract of that log in a minute, so you get more context ...</div>
<div><br class=3D""></div><div>log.do_rootfs:</div><div><blockquote =
type=3D"cite" class=3D""><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; =
border-left-width: 1px; border-left-style: solid; border-left-color: =
rgb(204, 204, 204); padding-left: 1ex;"><div class=3D"" =
style=3D"overflow-wrap: break-word;"><div class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"" =
style=3D"overflow-wrap: break-word;"><div class=3D"">NOTE: Exit code 1. =
Output:</div><div class=3D""><div class=3D""><div class=3D"">usage: =
qemu-arm [options] program [arguments]</div><div class=3D"">Linux CPU =
emulator (compiled for arm emulation)</div><div class=3D""><br =
class=3D""></div><div class=3D"">Options and associated environment =
variables:</div><div class=3D""><br class=3D""></div><div =
class=3D"">Argument &nbsp; &nbsp; &nbsp;Env-variable &nbsp; &nbsp; =
&nbsp;Description</div><div class=3D"">-h &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;prints this =
help</div><div class=3D""><br class=3D""></div><div =
class=3D"">...</div><div class=3D""><br =
class=3D""></div></div></div></div></div></blockquote></div></div></blockq=
uote></div></blockquote><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">Am 05.03.2020 um 15:37 schrieb Alexander =
Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
class=3D"">alex.kanavin@gmail.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"">"&nbsp; WARNING: The postinstall intercept =
hook =E2=80=9Aupdate_font_cache=E2=80=98 failed, details in =
log.do_rootfs"</div><div class=3D""><br class=3D""></div><div =
class=3D"">So what does log.do_rootfs say?</div><div class=3D""><br =
class=3D""></div><div class=3D"">Alex<br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, 5 Mar 2020 at 14:46, Roelof =
&lt;<a href=3D"mailto:rberg@berg-solutions.de" =
class=3D"">rberg@berg-solutions.de</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D""><div class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div style=3D"overflow-wrap: =
break-word;" class=3D""><div class=3D"">NOTE: Exit code 1. =
Output:</div><div class=3D""><div class=3D""><div class=3D"">usage: =
qemu-arm [options] program [arguments]</div><div class=3D"">Linux CPU =
emulator (compiled for arm emulation)</div><div class=3D""><br =
class=3D""></div><div class=3D"">Options and associated environment =
variables:</div><div class=3D""><br class=3D""></div><div =
class=3D"">Argument &nbsp; &nbsp; &nbsp;Env-variable &nbsp; &nbsp; =
&nbsp;Description</div><div class=3D"">-h &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;prints this =
help</div><div class=3D""><br class=3D""></div><div =
class=3D"">...</div><div class=3D""><br =
class=3D""></div></div></div></div></div></blockquote></div></div></blockq=
uote></div></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_62F25521-8432-4685-9A63-19F290EEC134--
