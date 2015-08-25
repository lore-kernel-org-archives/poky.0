Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09E29E00C0D; Tue, 25 Aug 2015 07:02:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5A2AE003D9
	for <poky@yoctoproject.org>; Tue, 25 Aug 2015 07:02:50 -0700 (PDT)
Received: by qkda128 with SMTP id a128so50971231qkd.3
	for <poky@yoctoproject.org>; Tue, 25 Aug 2015 07:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=JXuzG904PtQ2o1nF1cKGaH2OSeE2b5b8ZFW8RFvcxUw=;
	b=ILbMxj4vHpmx2/H5xsbGRH1pBCXUWxqQLL2X1KYABktf2E8IY2NJqjVblwKpdDeiJs
	D4/TbbXhS6CF+dq+zANDKbM5fk17EjNqjeLJrgE0rRlBnpm77wLJFzVmaxVBlXc1LnTW
	Irg+BXOx1apxUWl4zGdXfdnOn9H/E0tkrHHpwQ0zRAV7Cu/WR8bQtAHuxas7tug6XZ86
	pqj1h/fqtU5kO+0VGSX5wE7zlcnPEVKLt0bvQXFcEcncuExmoP4XzzrCj7WZXhVsgSYn
	bGTNuoi3VkfPgCeOL5x2awKGHB/Shtf+awuFHloGmGa2d5howR7S2ZSDHfhHRagT3Twb
	tVAg==
MIME-Version: 1.0
X-Received: by 10.55.209.90 with SMTP id s87mr19343440qki.26.1440511369864;
	Tue, 25 Aug 2015 07:02:49 -0700 (PDT)
Received: by 10.55.149.133 with HTTP; Tue, 25 Aug 2015 07:02:49 -0700 (PDT)
In-Reply-To: <CADnUhn1rmc+=FgR7WS+=hceD0yiq5EKMEMa2__cRGPfC+XCLyA@mail.gmail.com>
References: <CADnUhn3V5iB4g1gb+2btHTK5pWU=j0LfOJpHj+EJHeoU1ERKew@mail.gmail.com>
	<CAJTo0LaFdeqnNnSMKxuy9h8GjSN4gRfF2LcCoPEnqaomWs67yw@mail.gmail.com>
	<CADnUhn0ffkWVo3fW+Sy=AFCTh9BRAypq4BfopiGFo1B0bW6Z3Q@mail.gmail.com>
	<CADnUhn3Q-EwYYVBeVN3Z9a=__vUzaNwexYBMZyMxN=nOKORs1Q@mail.gmail.com>
	<CADnUhn1rmc+=FgR7WS+=hceD0yiq5EKMEMa2__cRGPfC+XCLyA@mail.gmail.com>
Date: Tue, 25 Aug 2015 17:02:49 +0300
Message-ID: <CADnUhn24ybkhoVpW-CLLHrypYQgnjjVESsSSuJN4AZCus458gw@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [Errno 18] Invalid cross-device link warning coming from license file copy
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Aug 2015 14:02:56 -0000
Content-Type: multipart/alternative; boundary=001a1147a5187eed3d051e233064

--001a1147a5187eed3d051e233064
Content-Type: text/plain; charset=UTF-8

Hi!
It is not that easy for me to get rid of these mount points on same drive
as they are made in /etc/fstab file. If I unmount any mountpoint, it does
not have any directory to show anymore. Therefore I need to make some
workaround. Really, system call stat does not recognize mount points on the
same drive. However, df command does recognize. Therefore I'm considering
workaround for this problem using df. Unfortunately it is required to use
pipe for getting results from df. I need to modify
if os.access(src, os.W_OK) and (os.stat(src).st_dev ==
os.stat(destdir).st_dev):
line in copy_license_files function as below:

if os.access(src, os.W_OK) and (os.popen('df -P ' + src).read().split()[11]
== (os.popen('df -P ' + destdir).read().split()[11] ):

I'm pretty sure it's much more slowly, but it makes the important
difference. I suppose this is so seldom problem that poky is not too eager
in patching
poky/meta/classes/license.bbclass with this line.

Is there any way overloading system methods with own methods like recipes
with bbappend? I have not found any, so most likely I just need to patch my
poky with this line locally that makes updates pretty awkward, don't I

Cheers,
Matti

2015-08-24 15:52 GMT+03:00 matti kaasinen <matti.kaasinen@gmail.com>:

> Hi!
> This warning/error is coming from copy_license_files (listed below)
> function in do_populate task:
> #------------------------
> def copy_license_files(lic_files_paths, destdir):
>     import shutil
>
>     bb.utils.mkdirhier(destdir)
>     for (basename, path) in lic_files_paths:
>         try:
>             src = path
>             dst = os.path.join(destdir, basename)
>             if os.path.exists(dst):
>                 os.remove(dst)
>             if os.access(src, os.W_OK) and (os.stat(src).st_dev ==
> os.stat(destdir).st_dev):
>                 os.link(src, dst)
>             else:
>                 shutil.copyfile(src, dst)
>         except Exception as e:
>             bb.warn("Could not copy license file %s to %s: %s" % (src,
> dst, e))
> #-----------------------
> I suppose the idea of :
>             if os.access(src, os.W_OK) and (os.stat(src).st_dev ==
> os.stat(destdir).st_dev):
>
> -test is to find out if source directory and destination directories were
> on different drives. In my case that seems kind of failing in that task.
> "Kind of" because they are in different logical drives that are mounted on
> the same physical drive.
>
> Therefore, link is tried to make instead of copy. However, this fails as
> those directories are on the different logical drives and "OSError: [Errno
> 18] Invalid cross-device link" is thrown.
> I suppose, there is no other workaround to this than removing mountpoint
> from this build directory and instead using it as normal direcotry.
> Original idea was that it could have been mapped anywhere - for instance to
> nfs drive.
>
> Cheers,
> Matti
>
>
> By manually executing
>
> 2015-08-20 15:31 GMT+03:00 matti kaasinen <matti.kaasinen@gmail.com>:
>
>> Ross,
>> it is still unclear to me what release are you referring to. Could you
>> please pinpoint it to me.
>> Thanks,
>> Matti
>>
>> 2015-08-19 16:19 GMT+03:00 matti kaasinen <matti.kaasinen@gmail.com>:
>>
>>> I listed my main build configuration in my previous mail. What else do
>>> you need. In fact I have not updated poky recently.
>>> -Matti
>>>
>>> 2015-08-19 16:00 GMT+03:00 Burton, Ross <ross.burton@intel.com>:
>>>
>>>>
>>>> On 19 August 2015 at 13:48, matti kaasinen <matti.kaasinen@gmail.com>
>>>> wrote:
>>>>
>>>>> WARNING: Could not copy license file /YOCTO/poky/LICENSE to
>>>>> /XXX/work/am335x_evm-poky-linux-gnueabi/xxxx-image/1.0-r0/license-destdir/xxx-image/LICENSE:
>>>>> [Errno 18] Invalid cross-device link
>>>>>
>>>>> Yes, sources and results are located on different logical drives, but
>>>>> should it still be possible to copy files between them. Everything else
>>>>> works fine in bitbaking.
>>>>
>>>>
>>>> What release?  I have my build and checkouts on different disks and I
>>>> don't get this warning.
>>>>
>>>> Ross
>>>>
>>>
>>>
>>
>

--001a1147a5187eed3d051e233064
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi!<br></div><div>It is not that easy for me to =
get rid of these mount points on same drive as they are made in /etc/fstab =
file. If I unmount any mountpoint, it does not have any directory to show a=
nymore. Therefore I need to make some workaround. Really, system call stat =
does not recognize mount points on the same drive. However, df command does=
 recognize. Therefore I&#39;m considering workaround for this problem using=
 df. Unfortunately it is required to use pipe for getting results from df. =
I need to modify <br> if os.access(src, os.W_OK) and (os.stat(src).st_dev =
=3D=3D os.stat(destdir).st_dev):<br></div><div>line in copy_license_files f=
unction as below:<br><br>if os.access(src, os.W_OK) and (os.popen(&#39;df -=
P &#39; + src).read().split()[11] =3D=3D (os.popen(&#39;df -P &#39; + destd=
ir).read().split()[11] ):<br></div><br></div><div>I&#39;m pretty sure it&#3=
9;s much more slowly, but it makes the important difference. I suppose this=
 is so seldom problem that poky is not too eager in patching<br>poky/meta/c=
lasses/license.bbclass with this line.<br><br></div><div>Is there any way o=
verloading system methods with own methods like recipes with bbappend? I ha=
ve not found any, so most likely I just need to patch my poky with this lin=
e locally that makes updates pretty awkward, don&#39;t I<br></div><div><br>=
</div><div>Cheers,<br></div>Matti<div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2015-08-24 15:52 GMT+03:00 matti kaasinen <span dir=3D"ltr=
">&lt;<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.k=
aasinen@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div><div>Hi!<br></div>This warning/error is c=
oming from copy_license_files (listed below) function in do_populate task:<=
br></div><div>#------------------------<br></div><div>def copy_license_file=
s(lic_files_paths, destdir):<br>=C2=A0=C2=A0=C2=A0 import shutil<br><br>=C2=
=A0=C2=A0=C2=A0 bb.utils.mkdirhier(destdir)<br>=C2=A0=C2=A0=C2=A0 for (base=
name, path) in lic_files_paths:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 try:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 src =3D path<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 dst =3D os.path.join(destdir, basename)<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.exists(dst):<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 os.remove(dst)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.access(src, os.W_OK) and (os.stat(src)=
.st_dev =3D=3D os.stat(destdir).st_dev):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 os.link(src, d=
st)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 e=
lse:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 shutil.copyfile(src, dst)<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 except Exception as e:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.warn(&quot;Could not copy licens=
e file %s to %s: %s&quot; % (src, dst, e))<br>#-----------------------<br><=
/div><div>I suppose the idea of :<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.access(src, os.W_OK) and (os.stat(src)=
.st_dev =3D=3D os.stat(destdir).st_dev):<br><br></div><div>-test is to find=
 out if source directory and destination directories were on different driv=
es. In my case that seems kind of failing in that task. &quot;Kind of&quot;=
 because they are in different logical drives that are mounted on the same =
physical drive.<br><br></div><div>Therefore, link is tried to make instead =
of copy. However, this fails as those directories are on the different logi=
cal drives and &quot;OSError: [Errno 18] Invalid cross-device link&quot; is=
 thrown.<br></div><div>I suppose, there is no other workaround to this than=
 removing mountpoint from this build directory and instead using it as norm=
al direcotry. Original idea was that it could have been mapped anywhere - f=
or instance to nfs drive.<br><br></div><div>Cheers,<br></div><div>Matti<br>=
</div><div><br></div><div><br></div>By manually executing <br></div><div cl=
ass=3D""><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">2015-08-20 15:31 GMT+03:00 matti kaasinen <span dir=3D"ltr">&lt;<=
a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.kaasinen=
@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div><div><div>Ross,<br></div>it is still unclear to =
me what release are you referring to. Could you please pinpoint it to me.<b=
r></div>Thanks,<br></div>Matti<br></div><div><div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">2015-08-19 16:19 GMT+03:00 matti kaasinen =
<span dir=3D"ltr">&lt;<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D=
"_blank">matti.kaasinen@gmail.com</a>&gt;</span>:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I listed my main build co=
nfiguration in my previous mail. What else do you need. In fact I have not =
updated poky recently.<span><font color=3D"#888888"><br></font></span></div=
><span><font color=3D"#888888">-Matti<br></font></span></div><div><div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-08-19 16:00 GMT+=
03:00 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@inte=
l.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span>:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_extra"><span><br><div class=3D"gmail_quote">On 19 August 2015 at 13:48, =
matti kaasinen <span dir=3D"ltr">&lt;<a href=3D"mailto:matti.kaasinen@gmail=
.com" target=3D"_blank">matti.kaasinen@gmail.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div>WARNING: Could not co=
py license file /YOCTO/poky/LICENSE to /XXX/work/am335x_evm-poky-linux-gnue=
abi/xxxx-image/1.0-r0/license-destdir/xxx-image/LICENSE: [Errno 18] Invalid=
 cross-device link<br><br></div>Yes, sources and results are located on dif=
ferent logical drives, but should it still be possible to copy files betwee=
n them. Everything else works fine in bitbaking.</blockquote></div><br></sp=
an>What release?=C2=A0 I have my build and checkouts on different disks and=
 I don&#39;t get this warning.</div><span><font color=3D"#888888"><div clas=
s=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></s=
pan></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div></div>

--001a1147a5187eed3d051e233064--
