Subject: [PATCH] connman: Fix critical CVE-2021-33833 for dunfell branch #poky
To: poky@lists.yoctoproject.org
From: "Damien HACKETT" <damienhackett@eaton.com>
X-Originating-Location: Atlanta, Georgia, US (104.129.205.10)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 Sep 2021 23:16:05 -0700
Message-ID: <oUjR.1632291365193010277.SeKk@lists.yoctoproject.org>
X-Groupsio-MsgNum: 12563
Content-Type: multipart/mixed; boundary="JdnWplKaZwqKvlPZcBkq"

--JdnWplKaZwqKvlPZcBkq
Content-Type: multipart/alternative; boundary="oTmZFd70ug1Eyq9ZGev6"

--oTmZFd70ug1Eyq9ZGev6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In dunfell, connman version is 1.37 so is vulnerable to CVE-2021-33833.

For more recent branches like gatesgarth, they use connman version 1.39 at =
least so already have this CVE fixed.

Seems this CVE was not detected by cve_check as it was affected to "connect=
ion_manager" instead of "connman".
Probably @Steve Sakoman will do an other patch for that.

=3D> Here is the thread we discussed about the problem : https://lists.yoct=
oproject.org/g/yocto-security/topic/update_of_conmann_to_1_39_and/85762164?=
p=3D,,,20,0,0,0::recentpostdate/sticky,,,20,2,0,85762164,previd=3D163224497=
1072307699,nextid=3D1629104796496170789&previd=3D1632244971072307699&nextid=
=3D1629104796496170789

From 2ee0da18332cb6030a54fe8b176625bec7b1d3b3 Mon Sep 17 00:00:00 2001
From: Damien Hackett <DamienHackett@eaton.com>
Date: Tue, 21 Sep 2021 13:40:40 +0200
Subject: [PATCH] connman: Fix Connman CVE-2021-33833 in 1.37 version

---
.../connman/connman/CVE-2021-33833.patch=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 69=
 +++++++++++++++++++
.../connman/connman_1.37.bb=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
2 files changed, 70 insertions(+)
create mode 100644 meta/recipes-connectivity/connman/connman/CVE-2021-33833=
.patch

diff --git a/meta/recipes-connectivity/connman/connman/CVE-2021-33833.patch=
 b/meta/recipes-connectivity/connman/connman/CVE-2021-33833.patch
new file mode 100644
index 0000000000..773ef8d13e
--- /dev/null
+++ b/meta/recipes-connectivity/connman/connman/CVE-2021-33833.patch
@@ -0,0 +1,69 @@
+From eceb2e8d2341c041df55a5e2f047d9a8c491463c Mon Sep 17 00:00:00 2001
+From: Valery Kashcheev <v.kascheev@omp.ru>
+Date: Mon, 7 Jun 2021 18:58:24 +0200
+Subject: [PATCH] dnsproxy: Check the length of buffers before memcpy
+
+Fix using a stack-based buffer overflow attack by checking the length of
+the ptr and uptr buffers.
+
+Fix debug message output.
+
+Fixes: CVE-2021-33833
+
+Reference to upstream patch:
+https://git.kernel.org/pub/scm/network/connman/connman.git/commit/?id=3Dec=
eb2e8d2341c041df55a5e2f047d9a8c491463c
+
+Signed-off-by: Damien Hackett <DamienHackett@eaton.com>
+---
+ src/dnsproxy.c | 20 +++++++++++---------
+ 1 file changed, 11 insertions(+), 9 deletions(-)
+
+diff --git a/src/dnsproxy.c b/src/dnsproxy.c
+index de52df5a..38dbdd71 100644
+--- a/src/dnsproxy.c
++++ b/src/dnsproxy.c
+@@ -1788,17 +1788,15 @@ static char *uncompress(int16_t field_count, char =
*start, char *end,
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* tmp buffer.
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0*/
+
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 debug("pos %d ulen %d left %d name =
%s", pos, ulen,
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 (int)(uncomp_len=
 - (uptr - uncompressed)), uptr);
+-
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ulen =3D strlen(name);
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if ((uptr + ulen + 1) > uncomp_end)=
 {
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ulen =3D strlen(name) + 1;
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if ((uptr + ulen) > uncomp_end)
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 goto out;
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 strncpy(uptr, name, uncomp_len - (u=
ptr - uncompressed));
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 strncpy(uptr, name, ulen);
++
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 debug("pos %d ulen %d left %d name =
%s", pos, ulen,
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 (int)(uncomp_end=
 - (uptr + ulen)), uptr);
+
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 uptr +=3D ulen;
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 *uptr++ =3D '\0';
+
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ptr +=3D pos;
+
+@@ -1841,7 +1839,7 @@ static char *uncompress(int16_t field_count, char *s=
tart, char *end,
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 } else if (dns_type =3D=3D ns_t_a |=
| dns_type =3D=3D ns_t_aaaa) {
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 dlen =3D uptr[-2=
] << 8 | uptr[-1];
+
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (ptr + dlen >=
 end) {
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if ((ptr + dlen)=
 > end || (uptr + dlen) > uncomp_end) {
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 debug("data len %d too long", dlen);
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 goto out;
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }
+@@ -1880,6 +1878,10 @@ static char *uncompress(int16_t field_count, char *=
start, char *end,
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* refresh =
interval, retry interval, expiration
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* limit an=
d minimum ttl). They are 20 bytes long.
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0*/
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if ((uptr + 20) =
> uncomp_end || (ptr + 20) > end) {
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 debug("soa record too long");
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 goto out;
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 memcpy(uptr, ptr=
, 20);
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 uptr +=3D 20;
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ptr +=3D 20;
+--
diff --git a/meta/recipes-connectivity/connman/connman_1.37.bb b/meta/recip=
es-connectivity/connman/connman_1.37.bb
index bdab4c4f18..8a275dd8e2 100644
--- a/meta/recipes-connectivity/connman/connman_1.37.bb
+++ b/meta/recipes-connectivity/connman/connman_1.37.bb
@@ -9,6 +9,7 @@ SRC_URI=C2=A0 =3D "${KERNELORG_MIRROR}/linux/network/${BPN}=
/${BP}.tar.xz \
file://CVE-2021-26675.patch \
file://CVE-2021-26676-0001.patch \
file://CVE-2021-26676-0002.patch \
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://=
CVE-2021-33833.patch \
"

SRC_URI_append_libc-musl =3D " file://0002-resolve-musl-does-not-implement-=
res_ninit.patch"
--
2.20.1

--oTmZFd70ug1Eyq9ZGev6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In dunfell, connman version is 1.37 so is vulnerable to CVE-2021-33833.<br =
/><br />For more recent branches like gatesgarth, they use connman version =
1.39 at least so already have this CVE fixed.<br /><br />Seems this CVE was=
 not detected by cve_check as it was affected to "connection_manager" inste=
ad of "connman".<br />Probably @Steve Sakoman will do an other patch for th=
at.<br /><br />=3D&gt; Here is the thread we discussed about the problem : =
https://lists.yoctoproject.org/g/yocto-security/topic/update_of_conmann_to_=
1_39_and/85762164?p=3D,,,20,0,0,0::recentpostdate/sticky,,,20,2,0,85762164,=
previd=3D1632244971072307699,nextid=3D1629104796496170789&amp;previd=3D1632=
244971072307699&amp;nextid=3D1629104796496170789<br /><br />From 2ee0da1833=
2cb6030a54fe8b176625bec7b1d3b3 Mon Sep 17 00:00:00 2001<br />From: Damien H=
ackett &lt;DamienHackett@eaton.com&gt;<br />Date: Tue, 21 Sep 2021 13:40:40=
 +0200<br />Subject: [PATCH] connman: Fix Connman CVE-2021-33833 in 1.37 ve=
rsion<br /><br />---<br />&nbsp;.../connman/connman/CVE-2021-33833.patch&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; | 69 +++++++++++++++++++<br />&nbsp;.../connman=
/connman_1.37.bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 1 +<br />&nbsp;2 =
files changed, 70 insertions(+)<br />&nbsp;create mode 100644 meta/recipes-=
connectivity/connman/connman/CVE-2021-33833.patch<br /><br />diff --git a/m=
eta/recipes-connectivity/connman/connman/CVE-2021-33833.patch b/meta/recipe=
s-connectivity/connman/connman/CVE-2021-33833.patch<br />new file mode 1006=
44<br />index 0000000000..773ef8d13e<br />--- /dev/null<br />+++ b/meta/rec=
ipes-connectivity/connman/connman/CVE-2021-33833.patch<br />@@ -0,0 +1,69 @=
@<br />+From eceb2e8d2341c041df55a5e2f047d9a8c491463c Mon Sep 17 00:00:00 2=
001<br />+From: Valery Kashcheev &lt;v.kascheev@omp.ru&gt;<br />+Date: Mon,=
 7 Jun 2021 18:58:24 +0200<br />+Subject: [PATCH] dnsproxy: Check the lengt=
h of buffers before memcpy<br />+<br />+Fix using a stack-based buffer over=
flow attack by checking the length of<br />+the ptr and uptr buffers.<br />=
+<br />+Fix debug message output.<br />+<br />+Fixes: CVE-2021-33833<br />+=
<br />+Reference to upstream patch:<br />+https://git.kernel.org/pub/scm/ne=
twork/connman/connman.git/commit/?id=3Deceb2e8d2341c041df55a5e2f047d9a8c491=
463c<br />+<br />+Signed-off-by: Damien Hackett &lt;DamienHackett@eaton.com=
&gt;<br />+---<br />+ src/dnsproxy.c | 20 +++++++++++---------<br />+ 1 fil=
e changed, 11 insertions(+), 9 deletions(-)<br />+<br />+diff --git a/src/d=
nsproxy.c b/src/dnsproxy.c<br />+index de52df5a..38dbdd71 100644<br />+--- =
a/src/dnsproxy.c<br />++++ b/src/dnsproxy.c<br />+@@ -1788,17 +1788,15 @@ s=
tatic char *uncompress(int16_t field_count, char *start, char *end,<br />+ =
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;* tmp buffer.<br />+ &nbsp;&nbs=
p;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;*/<br />+ <br />+-&nbsp;&nbsp;&nbsp; &nbs=
p;&nbsp;&nbsp; debug("pos %d ulen %d left %d name %s", pos, ulen,<br />+-&n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; (int)(uncomp_len - (=
uptr - uncompressed)), uptr);<br />+-<br />+-&nbsp;&nbsp;&nbsp; &nbsp;&nbsp=
;&nbsp; ulen =3D strlen(name);<br />+-&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
 if ((uptr + ulen + 1) &gt; uncomp_end) {<br />++&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp; ulen =3D strlen(name) + 1;<br />++&nbsp;&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp; if ((uptr + ulen) &gt; uncomp_end)<br />+ &nbsp;&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; goto out;<br />+-&nbsp;&nbsp;&nbsp; &nbsp;=
&nbsp;&nbsp; }<br />+-&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; strncpy(uptr, n=
ame, uncomp_len - (uptr - uncompressed));<br />++&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp; strncpy(uptr, name, ulen);<br />++<br />++&nbsp;&nbsp;&nbsp; &n=
bsp;&nbsp;&nbsp; debug("pos %d ulen %d left %d name %s", pos, ulen,<br />++=
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; (int)(uncomp_end -=
 (uptr + ulen)), uptr);<br />+ <br />+ &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp=
; uptr +=3D ulen;<br />+-&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; *uptr++ =3D =
'\0';<br />+ <br />+ &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ptr +=3D pos;<br=
 />+ <br />+@@ -1841,7 +1839,7 @@ static char *uncompress(int16_t field_cou=
nt, char *start, char *end,<br />+ &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; } =
else if (dns_type =3D=3D ns_t_a || dns_type =3D=3D ns_t_aaaa) {<br />+ &nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; dlen =3D uptr[-2] &lt;=
&lt; 8 | uptr[-1];<br />+ <br />+-&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;&nbsp; if (ptr + dlen &gt; end) {<br />++&nbsp;&nbsp;&nbsp; &nbsp;=
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; if ((ptr + dlen) &gt; end || (uptr + dlen) =
&gt; uncomp_end) {<br />+ &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp=
;&nbsp; &nbsp;&nbsp;&nbsp; debug("data len %d too long", dlen);<br />+ &nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; got=
o out;<br />+ &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; }<br=
 />+@@ -1880,6 +1878,10 @@ static char *uncompress(int16_t field_count, cha=
r *start, char *end,<br />+ &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp; &nbsp;* refresh interval, retry interval, expiration<br />+ &nbsp=
;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;* limit and minim=
um ttl). They are 20 bytes long.<br />+ &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p; &nbsp;&nbsp;&nbsp; &nbsp;*/<br />++&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp; if ((uptr + 20) &gt; uncomp_end || (ptr + 20) &gt; end)=
 {<br />++&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;&nbsp; debug("soa record too long");<br />++&nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; goto out;<br />++&nbsp;&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; }<br />+ &nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; memcpy(uptr, ptr, 20);<br />+ &nbsp;=
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; uptr +=3D 20;<br />+ &nb=
sp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ptr +=3D 20;<br />+--=
 <br />diff --git a/meta/recipes-connectivity/connman/connman_1.37.bb b/met=
a/recipes-connectivity/connman/connman_1.37.bb<br />index bdab4c4f18..8a275=
dd8e2 100644<br />--- a/meta/recipes-connectivity/connman/connman_1.37.bb<b=
r />+++ b/meta/recipes-connectivity/connman/connman_1.37.bb<br />@@ -9,6 +9=
,7 @@ SRC_URI&nbsp; =3D "${KERNELORG_MIRROR}/linux/network/${BPN}/${BP}.tar=
.xz \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; file://CVE-2021-26675.patch \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://CVE-2021-26676-0001.patch =
\<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; file://CVE-2021-26676-0002.patch \<br />+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://CVE-2021-33833.patch \<br />&n=
bsp;"<br />&nbsp;<br />&nbsp;SRC_URI_append_libc-musl =3D " file://0002-res=
olve-musl-does-not-implement-res_ninit.patch"<br />-- <br />2.20.1

--oTmZFd70ug1Eyq9ZGev6--

--JdnWplKaZwqKvlPZcBkq
Content-Type: text/x-patch; name="0001-connman-Fix-Connman-CVE-2021-33833-in-1.37-version.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="0001-connman-Fix-Connman-CVE-2021-33833-in-1.37-version.patch"

RnJvbSAyZWUwZGExODMzMmNiNjAzMGE1NGZlOGIxNzY2MjViZWM3YjFkM2IzIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYW1pZW4gSGFja2V0dCA8RGFtaWVuSGFja2V0dEBlYXRvbi5j
b20+CkRhdGU6IFR1ZSwgMjEgU2VwIDIwMjEgMTM6NDA6NDAgKzAyMDAKU3ViamVjdDogW1BBVENI
XSBjb25ubWFuOiBGaXggQ29ubm1hbiBDVkUtMjAyMS0zMzgzMyBpbiAxLjM3IHZlcnNpb24KCi0t
LQogLi4uL2Nvbm5tYW4vY29ubm1hbi9DVkUtMjAyMS0zMzgzMy5wYXRjaCAgICAgIHwgNjkgKysr
KysrKysrKysrKysrKysrKwogLi4uL2Nvbm5tYW4vY29ubm1hbl8xLjM3LmJiICAgICAgICAgICAg
ICAgICAgIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgbWV0YS9yZWNpcGVzLWNvbm5lY3Rpdml0eS9jb25ubWFuL2Nvbm5tYW4vQ1ZF
LTIwMjEtMzM4MzMucGF0Y2gKCmRpZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMtY29ubmVjdGl2aXR5
L2Nvbm5tYW4vY29ubm1hbi9DVkUtMjAyMS0zMzgzMy5wYXRjaCBiL21ldGEvcmVjaXBlcy1jb25u
ZWN0aXZpdHkvY29ubm1hbi9jb25ubWFuL0NWRS0yMDIxLTMzODMzLnBhdGNoCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAuLjc3M2VmOGQxM2UKLS0tIC9kZXYvbnVsbAorKysg
Yi9tZXRhL3JlY2lwZXMtY29ubmVjdGl2aXR5L2Nvbm5tYW4vY29ubm1hbi9DVkUtMjAyMS0zMzgz
My5wYXRjaApAQCAtMCwwICsxLDY5IEBACitGcm9tIGVjZWIyZThkMjM0MWMwNDFkZjU1YTVlMmYw
NDdkOWE4YzQ5MTQ2M2MgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCitGcm9tOiBWYWxlcnkgS2Fz
aGNoZWV2IDx2Lmthc2NoZWV2QG9tcC5ydT4KK0RhdGU6IE1vbiwgNyBKdW4gMjAyMSAxODo1ODoy
NCArMDIwMAorU3ViamVjdDogW1BBVENIXSBkbnNwcm94eTogQ2hlY2sgdGhlIGxlbmd0aCBvZiBi
dWZmZXJzIGJlZm9yZSBtZW1jcHkKKworRml4IHVzaW5nIGEgc3RhY2stYmFzZWQgYnVmZmVyIG92
ZXJmbG93IGF0dGFjayBieSBjaGVja2luZyB0aGUgbGVuZ3RoIG9mCit0aGUgcHRyIGFuZCB1cHRy
IGJ1ZmZlcnMuCisKK0ZpeCBkZWJ1ZyBtZXNzYWdlIG91dHB1dC4KKworRml4ZXM6IENWRS0yMDIx
LTMzODMzCisKK1JlZmVyZW5jZSB0byB1cHN0cmVhbSBwYXRjaDoKK2h0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9uZXR3b3JrL2Nvbm5tYW4vY29ubm1hbi5naXQvY29tbWl0Lz9pZD1lY2Vi
MmU4ZDIzNDFjMDQxZGY1NWE1ZTJmMDQ3ZDlhOGM0OTE0NjNjCisKK1NpZ25lZC1vZmYtYnk6IERh
bWllbiBIYWNrZXR0IDxEYW1pZW5IYWNrZXR0QGVhdG9uLmNvbT4KKy0tLQorIHNyYy9kbnNwcm94
eS5jIHwgMjAgKysrKysrKysrKystLS0tLS0tLS0KKyAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKKworZGlmZiAtLWdpdCBhL3NyYy9kbnNwcm94eS5jIGIv
c3JjL2Ruc3Byb3h5LmMKK2luZGV4IGRlNTJkZjVhLi4zOGRiZGQ3MSAxMDA2NDQKKy0tLSBhL3Ny
Yy9kbnNwcm94eS5jCisrKysgYi9zcmMvZG5zcHJveHkuYworQEAgLTE3ODgsMTcgKzE3ODgsMTUg
QEAgc3RhdGljIGNoYXIgKnVuY29tcHJlc3MoaW50MTZfdCBmaWVsZF9jb3VudCwgY2hhciAqc3Rh
cnQsIGNoYXIgKmVuZCwKKyAJCSAqIHRtcCBidWZmZXIuCisgCQkgKi8KKyAKKy0JCWRlYnVnKCJw
b3MgJWQgdWxlbiAlZCBsZWZ0ICVkIG5hbWUgJXMiLCBwb3MsIHVsZW4sCistCQkJKGludCkodW5j
b21wX2xlbiAtICh1cHRyIC0gdW5jb21wcmVzc2VkKSksIHVwdHIpOworLQorLQkJdWxlbiA9IHN0
cmxlbihuYW1lKTsKKy0JCWlmICgodXB0ciArIHVsZW4gKyAxKSA+IHVuY29tcF9lbmQpIHsKKysJ
CXVsZW4gPSBzdHJsZW4obmFtZSkgKyAxOworKwkJaWYgKCh1cHRyICsgdWxlbikgPiB1bmNvbXBf
ZW5kKQorIAkJCWdvdG8gb3V0OworLQkJfQorLQkJc3RybmNweSh1cHRyLCBuYW1lLCB1bmNvbXBf
bGVuIC0gKHVwdHIgLSB1bmNvbXByZXNzZWQpKTsKKysJCXN0cm5jcHkodXB0ciwgbmFtZSwgdWxl
bik7CisrCisrCQlkZWJ1ZygicG9zICVkIHVsZW4gJWQgbGVmdCAlZCBuYW1lICVzIiwgcG9zLCB1
bGVuLAorKwkJCShpbnQpKHVuY29tcF9lbmQgLSAodXB0ciArIHVsZW4pKSwgdXB0cik7CisgCisg
CQl1cHRyICs9IHVsZW47CistCQkqdXB0cisrID0gJ1wwJzsKKyAKKyAJCXB0ciArPSBwb3M7Cisg
CitAQCAtMTg0MSw3ICsxODM5LDcgQEAgc3RhdGljIGNoYXIgKnVuY29tcHJlc3MoaW50MTZfdCBm
aWVsZF9jb3VudCwgY2hhciAqc3RhcnQsIGNoYXIgKmVuZCwKKyAJCX0gZWxzZSBpZiAoZG5zX3R5
cGUgPT0gbnNfdF9hIHx8IGRuc190eXBlID09IG5zX3RfYWFhYSkgeworIAkJCWRsZW4gPSB1cHRy
Wy0yXSA8PCA4IHwgdXB0clstMV07CisgCistCQkJaWYgKHB0ciArIGRsZW4gPiBlbmQpIHsKKysJ
CQlpZiAoKHB0ciArIGRsZW4pID4gZW5kIHx8ICh1cHRyICsgZGxlbikgPiB1bmNvbXBfZW5kKSB7
CisgCQkJCWRlYnVnKCJkYXRhIGxlbiAlZCB0b28gbG9uZyIsIGRsZW4pOworIAkJCQlnb3RvIG91
dDsKKyAJCQl9CitAQCAtMTg4MCw2ICsxODc4LDEwIEBAIHN0YXRpYyBjaGFyICp1bmNvbXByZXNz
KGludDE2X3QgZmllbGRfY291bnQsIGNoYXIgKnN0YXJ0LCBjaGFyICplbmQsCisgCQkJICogcmVm
cmVzaCBpbnRlcnZhbCwgcmV0cnkgaW50ZXJ2YWwsIGV4cGlyYXRpb24KKyAJCQkgKiBsaW1pdCBh
bmQgbWluaW11bSB0dGwpLiBUaGV5IGFyZSAyMCBieXRlcyBsb25nLgorIAkJCSAqLworKwkJCWlm
ICgodXB0ciArIDIwKSA+IHVuY29tcF9lbmQgfHwgKHB0ciArIDIwKSA+IGVuZCkgeworKwkJCQlk
ZWJ1Zygic29hIHJlY29yZCB0b28gbG9uZyIpOworKwkJCQlnb3RvIG91dDsKKysJCQl9CisgCQkJ
bWVtY3B5KHVwdHIsIHB0ciwgMjApOworIAkJCXVwdHIgKz0gMjA7CisgCQkJcHRyICs9IDIwOwor
LS0gCmRpZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMtY29ubmVjdGl2aXR5L2Nvbm5tYW4vY29ubm1h
bl8xLjM3LmJiIGIvbWV0YS9yZWNpcGVzLWNvbm5lY3Rpdml0eS9jb25ubWFuL2Nvbm5tYW5fMS4z
Ny5iYgppbmRleCBiZGFiNGM0ZjE4Li44YTI3NWRkOGUyIDEwMDY0NAotLS0gYS9tZXRhL3JlY2lw
ZXMtY29ubmVjdGl2aXR5L2Nvbm5tYW4vY29ubm1hbl8xLjM3LmJiCisrKyBiL21ldGEvcmVjaXBl
cy1jb25uZWN0aXZpdHkvY29ubm1hbi9jb25ubWFuXzEuMzcuYmIKQEAgLTksNiArOSw3IEBAIFNS
Q19VUkkgID0gIiR7S0VSTkVMT1JHX01JUlJPUn0vbGludXgvbmV0d29yay8ke0JQTn0vJHtCUH0u
dGFyLnh6IFwKICAgICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyMS0yNjY3NS5wYXRjaCBcCiAgICAg
ICAgICAgICBmaWxlOi8vQ1ZFLTIwMjEtMjY2NzYtMDAwMS5wYXRjaCBcCiAgICAgICAgICAgICBm
aWxlOi8vQ1ZFLTIwMjEtMjY2NzYtMDAwMi5wYXRjaCBcCisgICAgICAgICAgICBmaWxlOi8vQ1ZF
LTIwMjEtMzM4MzMucGF0Y2ggXAogIgogCiBTUkNfVVJJX2FwcGVuZF9saWJjLW11c2wgPSAiIGZp
bGU6Ly8wMDAyLXJlc29sdmUtbXVzbC1kb2VzLW5vdC1pbXBsZW1lbnQtcmVzX25pbml0LnBhdGNo
IgotLSAKMi4yMC4xCgo=

--JdnWplKaZwqKvlPZcBkq--
