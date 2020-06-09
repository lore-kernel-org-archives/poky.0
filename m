Subject: can we add a task of checking existence of sstate_cache right before exec_task
To: poky@lists.yoctoproject.org
From: zhangyifan46@huawei.com
X-Originating-Location: HK (116.66.184.190)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 09 Jun 2020 01:12:38 -0700
Message-ID: <60bo.1591690358178357419.PKSr@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="X1vkzplyUZ0hqCj07GoD"

--X1vkzplyUZ0hqCj07GoD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://lists.yoctoproject.org/g/poky/message/12030
we have a former discussion about the time poky check sstate_cache.
And we have put forward an idea of=C2=A0 parallel build of recipes instead=
 of gcc.
So I started modify the mechanism a little . I'd like to add something lik=
e checking existence of sstate_cache and unpack it if it's there.
in bitbake/lib/bb/build.py, def _exec_task (fn,=C2=A0task, d, quieterr):
I did something like
tgzfile =3D sstate_cache file
if exists tgzfile
unpack it
return 0
and i met a problem of later tasks unable to find files . So I'd like to a=
sk if i was doing right and where should i unpack the sstate_cache and do i=
 need more actions?

The problem means a lot to me and i believe solving it means something for=
 the whole YOCTO society for build efficeitncy improvement

--X1vkzplyUZ0hqCj07GoD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<a href=3D"https://lists.yoctoproject.org/g/poky/message/12030" target=3D"_=
blank" rel=3D"nofollow noopener">https://lists.yoctoproject.org/g/poky/mess=
age/12030</a><br />we have a former discussion about the time poky check ss=
tate_cache.<br />And we have put forward an idea of&nbsp; parallel build of=
 recipes instead of gcc.<br />So I started modify the mechanism a little . =
I'd like to add something like checking existence of sstate_cache and unpac=
k it if it's there.&nbsp;<br />in bitbake/lib/bb/build.py, def _exec_task (=
fn,&nbsp;task, d, quieterr):<br />I did something like&nbsp;<br />tgzfile =
=3D sstate_cache file&nbsp;<br />
<div>&nbsp; &nbsp; &nbsp; &nbsp; if exists tgzfile<br />&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;unpack it&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; return 0</div>
and i met a problem of later tasks unable to find files . So I'd like to a=
sk if i was doing right and where should i unpack the sstate_cache and do i=
 need more actions?<br /><br />The problem means a lot to me and i believe =
solving it means something for the whole YOCTO society for build efficeitnc=
y improvement

--X1vkzplyUZ0hqCj07GoD--
