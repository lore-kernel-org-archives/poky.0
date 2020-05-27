Subject: about when poky check sstate_cache #yocto
To: poky@lists.yoctoproject.org
From: zhangyifan46@huawei.com
X-Originating-Location: HK (116.66.184.199)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 26 May 2020 23:29:28 -0700
Message-ID: <GPG8.1590560968516047795.1WrB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LHrUm7jDtdSE6zsgLXEI"

--LHrUm7jDtdSE6zsgLXEI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I read the codes about sstate_cache. Let me briefly talk about how it work =
. I am not sure if it is right.
Example,we have setscene tasks A_setsscene, B_setcene.
and Task C ,D are not setscene task.
After we bitbake something, runqueue started,and it check A , B to see if =
the sstate_caache exists and if exist, the poky does unpacking the cache an=
d then ,ordinary build process starts and it will skip A and B.
So checking the existence and validation of sstate_cache is before ordinar=
y build process instead of right before execcuting A and B(for example, we =
have a dependency tree, A,depend on X ,checking is before X instead of betw=
een X and A)
that's the result of my reading codes. And i did a small experienment that=
, in the middle of a clean bitbake project, i copied=C2=A0 all sstae_caches=
 to the sstate_cache directory and it seemed the bitbake skips no task and =
unpacking did not happen.

Finally, i have a question. Can we move the checking and unpacking to, lik=
e the example above, right before executing A ,between X and A.
it means a lot to me. Cause the sharing of sstate_cache may be helpful to =
a more efficent parallel make(instead of just parallel make gcc jobs)

--LHrUm7jDtdSE6zsgLXEI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!--WeLinkPC-->I read the codes about sstate_cache. Let me briefly talk abo=
ut how it work . I am not sure if it is right.<br />Example,we have setscen=
e tasks A_setsscene, B_setcene.<br />and Task C ,D are not setscene task.<b=
r />After we bitbake something, runqueue started,and it check A , B to see =
if the sstate_caache exists and if exist, the poky does unpacking the cache=
 and then ,ordinary build process starts and it will skip A and B.<br />So =
checking the existence and validation of sstate_cache is before ordinary bu=
ild process instead of right before execcuting A and B(for example, we have=
 a dependency tree, A,depend on X ,checking is before X instead of between =
X and A)<br />that's the result of my reading codes. And i did a small expe=
rienment that, in the middle of a clean bitbake project, i copied&nbsp; all=
 sstae_caches to the sstate_cache directory and it seemed the bitbake skips=
 no task and unpacking did not happen.<br /><br />Finally, i have a questio=
n. Can we move the checking and unpacking to, like the example above, right=
 before executing A ,between X and A.<br />it means a lot to me. Cause the =
sharing of sstate_cache may be helpful to a more efficent parallel make(ins=
tead of just parallel make gcc jobs)

--LHrUm7jDtdSE6zsgLXEI--
