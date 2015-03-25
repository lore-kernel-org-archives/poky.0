Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13487E008EC; Wed, 25 Mar 2015 08:17:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCA18E008CE
	for <poky@yoctoproject.org>; Wed, 25 Mar 2015 08:17:25 -0700 (PDT)
Received: by oier21 with SMTP id r21so24130372oie.1
	for <poky@yoctoproject.org>; Wed, 25 Mar 2015 08:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XwGKsziUA9TgsdpQDIaLj2rImJADKhZ0V1+xUY0dvvo=;
	b=C6cqRK8ntZ4+EZAR6rC8lSzkiYyy/3imIa8d9pGdwDY4/LcHcR4M/nZ2AAtYoT4Bn/
	stSXE2uWIb9Ic13GaSN4MW8pBgy1x5LXMSnwZM+qjwIwOPXCtVdSu5eDUNgSvH/UOWJ2
	ZmCQwTdq6l8SVVZClaimybgdiYVyUa6bUB4gPDTkmdk7M32M2CPZPXXFtLlpDDDCeVLU
	bfC4dtwWM9LYrldgubWqcqTzB8e57Qih2Yc8J8PKqltyuWG060tWvwtjf2Dx0ZZfTYCG
	vypa+DuYBU3Xv+5Z4H+rTLno9mELa1Yhp+oRZdR+BzT9pbxjcPY87bxpHQFhGWRVGorX
	DeNA==
MIME-Version: 1.0
X-Received: by 10.60.124.42 with SMTP id mf10mr7870186oeb.81.1427296645303;
	Wed, 25 Mar 2015 08:17:25 -0700 (PDT)
Received: by 10.60.124.201 with HTTP; Wed, 25 Mar 2015 08:17:25 -0700 (PDT)
In-Reply-To: <1427293279-15261-1-git-send-email-alexandru.damian@intel.com>
References: <1427293279-15261-1-git-send-email-alexandru.damian@intel.com>
Date: Wed, 25 Mar 2015 08:17:25 -0700
Message-ID: <CAFNP8OsWu7vYiWJPtB5nnwpb6VneQLPDOXHMOg7P2HwKZ0yYXg@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
To: Alex DAMIAN <alexandru.damian@intel.com>
Cc: poky@yoctoproject.org,
	Belen Barros Pena <belen.barros.pena@linux.intel.com>
Subject: Re: [FIDO] toaster: updating toasterconf.json for fido release
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
X-List-Received-Date: Wed, 25 Mar 2015 15:17:28 -0000
Content-Type: multipart/alternative; boundary=047d7b5d483c88545a05121e65c0

--047d7b5d483c88545a05121e65c0
Content-Type: text/plain; charset=UTF-8

Sample listing in the manual has been updated to reflect this patch.  See
file:///home/scottrif/yocto-docs/documentation/toaster-manual/toaster-manual.html#json-structure
for the changes.

Scott

On Wed, Mar 25, 2015 at 7:21 AM, Alex DAMIAN <alexandru.damian@intel.com>
wrote:

> From: Belen Barros Pena <belen.barros.pena@linux.intel.com>
>
> We update the toasterconf.json file for the fido release.
>
> A small update to the release help text in the
> toasterconf.json file shipped with the meta-yocto layer.
>
> We now make explicit that Toaster will build with the
> tip of the selected branch. We also link the
> Yocto Project Dizzy release to the git repository,
> and not to the release page on the website.
>
> Signed-off-by: Belen Barros Pena <belen.barros.pena@linux.intel.com>
> Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
> ---
>  meta-yocto/conf/toasterconf.json | 25 ++++++++++++++++++++-----
>  1 file changed, 20 insertions(+), 5 deletions(-)
>
> diff --git a/meta-yocto/conf/toasterconf.json
> b/meta-yocto/conf/toasterconf.json
> index 51dbc8c..c455276 100644
> --- a/meta-yocto/conf/toasterconf.json
> +++ b/meta-yocto/conf/toasterconf.json
> @@ -12,7 +12,7 @@
>              "name": "Local Yocto Project",
>              "sourcetype": "local",
>              "apiurl": "../../",
> -            "branches": ["HEAD", "master", "dizzy"],
> +            "branches": ["HEAD", "master", "fido", "dizzy"],
>              "layers": [
>                  {
>                      "name": "openembedded-core",
> @@ -39,13 +39,13 @@
>              "name": "OpenEmbedded",
>              "sourcetype": "layerindex",
>              "apiurl": "http://layers.openembedded.org/layerindex/api/",
> -            "branches": ["master", "dizzy"]
> +            "branches": ["master", "fido", "dizzy"]
>          },
>          {
>              "name": "Imported layers",
>              "sourcetype": "imported",
>              "apiurl": "",
> -            "branches": ["master", "dizzy", "HEAD"]
> +            "branches": ["master", "fido", "dizzy", "HEAD"]
>
>          }
>      ],
> @@ -57,6 +57,12 @@
>              "dirpath": "bitbake"
>          },
>          {
> +            "name": "fido",
> +            "giturl": "remote:origin",
> +            "branch": "fido",
> +            "dirpath": "bitbake"
> +        },
> +        {
>              "name": "dizzy",
>              "giturl": "remote:origin",
>              "branch": "dizzy",
> @@ -80,7 +86,16 @@
>              "branch": "master",
>              "defaultlayers": [ "openembedded-core", "meta-yocto",
> "meta-yocto-bsp"],
>              "layersourcepriority": { "Imported layers": 99, "Local Yocto
> Project" : 10, "OpenEmbedded" :  0 },
> -            "helptext": "Toaster will run your builds using the <a href=\"
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project
> master branch</a>, where active development takes place. This is not a
> stable branch, so your builds might not work as expected."
> +            "helptext": "Toaster will run your builds using the tip of
> the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto
> Project master branch</a>, where active development takes place. This is
> not a stable branch, so your builds might not work as expected."
> +        },
> +        {
> +            "name": "fido",
> +            "description": "Yocto Project 1.8 Fido",
> +            "bitbake": "fido",
> +            "branch": "fido",
> +            "defaultlayers": [ "openembedded-core", "meta-yocto",
> "meta-yocto-bsp"],
> +            "layersourcepriority": { "Imported layers": 99, "Local Yocto
> Project" : 10, "OpenEmbedded" :  0 },
> +            "helptext": "Toaster will run your builds with the tip of the
> <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=fido\">Yocto
> Project 1.8 \"Fido\"</a> branch."
>          },
>          {
>              "name": "dizzy",
> @@ -89,7 +104,7 @@
>              "branch": "dizzy",
>              "defaultlayers": [ "openembedded-core", "meta-yocto",
> "meta-yocto-bsp"],
>              "layersourcepriority": { "Imported layers": 99, "Local Yocto
> Project" : 10, "OpenEmbedded" :  0 },
> -            "helptext": "Toaster will run your builds with the <a href=\"
> https://www.yoctoproject.org/downloads/core/dizzy1\">Yocto Project 1.7
> \"Dizzy\"</a> release"
> +            "helptext": "Toaster will run your builds with the tip of the
> <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=dizzy\">Yocto
> Project 1.7 \"Dizzy\"</a> branch."
>          },
>          {
>              "name": "local",
> --
> 1.9.1
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--047d7b5d483c88545a05121e65c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sample listing in the manual has been updated to refl=
ect this patch.=C2=A0 See file:///home/scottrif/yocto-docs/documentation/to=
aster-manual/toaster-manual.html#json-structure for the changes.<br><br></d=
iv>Scott<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Wed, Mar 25, 2015 at 7:21 AM, Alex DAMIAN <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alexandru.damian@intel.com" target=3D"_blank">alexandru.damian@i=
ntel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: Be=
len Barros Pena &lt;<a href=3D"mailto:belen.barros.pena@linux.intel.com">be=
len.barros.pena@linux.intel.com</a>&gt;<br>
<br>
We update the toasterconf.json file for the fido release.<br>
<br>
A small update to the release help text in the<br>
toasterconf.json file shipped with the meta-yocto layer.<br>
<br>
We now make explicit that Toaster will build with the<br>
tip of the selected branch. We also link the<br>
Yocto Project Dizzy release to the git repository,<br>
and not to the release page on the website.<br>
<br>
Signed-off-by: Belen Barros Pena &lt;<a href=3D"mailto:belen.barros.pena@li=
nux.intel.com">belen.barros.pena@linux.intel.com</a>&gt;<br>
Signed-off-by: Alexandru DAMIAN &lt;<a href=3D"mailto:alexandru.damian@inte=
l.com">alexandru.damian@intel.com</a>&gt;<br>
---<br>
=C2=A0meta-yocto/conf/toasterconf.json | 25 ++++++++++++++++++++-----<br>
=C2=A01 file changed, 20 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/meta-yocto/conf/toasterconf.json b/meta-yocto/conf/toasterconf=
.json<br>
index 51dbc8c..c455276 100644<br>
--- a/meta-yocto/conf/toasterconf.json<br>
+++ b/meta-yocto/conf/toasterconf.json<br>
@@ -12,7 +12,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;name&quot;: &quot;Loc=
al Yocto Project&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;sourcetype&quot;: &qu=
ot;local&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;apiurl&quot;: &quot;.=
./../&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;branches&quot;: [&quot;HEA=
D&quot;, &quot;master&quot;, &quot;dizzy&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;branches&quot;: [&quot;HEA=
D&quot;, &quot;master&quot;, &quot;fido&quot;, &quot;dizzy&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;layers&quot;: [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;name&quot;: &quot;openembedded-core&quot;,<br>
@@ -39,13 +39,13 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;name&quot;: &quot;Ope=
nEmbedded&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;sourcetype&quot;: &qu=
ot;layerindex&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;apiurl&quot;: &quot;<=
a href=3D"http://layers.openembedded.org/layerindex/api/" target=3D"_blank"=
>http://layers.openembedded.org/layerindex/api/</a>&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;branches&quot;: [&quot;mas=
ter&quot;, &quot;dizzy&quot;]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;branches&quot;: [&quot;mas=
ter&quot;, &quot;fido&quot;, &quot;dizzy&quot;]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;name&quot;: &quot;Imp=
orted layers&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;sourcetype&quot;: &qu=
ot;imported&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;apiurl&quot;: &quot;&=
quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;branches&quot;: [&quot;mas=
ter&quot;, &quot;dizzy&quot;, &quot;HEAD&quot;]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;branches&quot;: [&quot;mas=
ter&quot;, &quot;fido&quot;, &quot;dizzy&quot;, &quot;HEAD&quot;]<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0],<br>
@@ -57,6 +57,12 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;dirpath&quot;: &quot;=
bitbake&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;name&quot;: &quot;fido&quo=
t;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;giturl&quot;: &quot;remote=
:origin&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;branch&quot;: &quot;fido&q=
uot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;dirpath&quot;: &quot;bitba=
ke&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;name&quot;: &quot;diz=
zy&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;giturl&quot;: &quot;r=
emote:origin&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;branch&quot;: &quot;d=
izzy&quot;,<br>
@@ -80,7 +86,16 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;branch&quot;: &quot;m=
aster&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;defaultlayers&quot;: =
[ &quot;openembedded-core&quot;, &quot;meta-yocto&quot;, &quot;meta-yocto-b=
sp&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;layersourcepriority&q=
uot;: { &quot;Imported layers&quot;: 99, &quot;Local Yocto Project&quot; : =
10, &quot;OpenEmbedded&quot; :=C2=A0 0 },<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;helptext&quot;: &quot;Toas=
ter will run your builds using the &lt;a href=3D\&quot;<a href=3D"http://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/log/\" target=3D"_blank">http://git.y=
octoproject.org/cgit/cgit.cgi/poky/log/\</a>&quot;&gt;Yocto Project master =
branch&lt;/a&gt;, where active development takes place. This is not a stabl=
e branch, so your builds might not work as expected.&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;helptext&quot;: &quot;Toas=
ter will run your builds using the tip of the &lt;a href=3D\&quot;<a href=
=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\" target=3D"_blank"=
>http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\</a>&quot;&gt;Yocto Pr=
oject master branch&lt;/a&gt;, where active development takes place. This i=
s not a stable branch, so your builds might not work as expected.&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;name&quot;: &quot;fido&quo=
t;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;description&quot;: &quot;Y=
octo Project 1.8 Fido&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;bitbake&quot;: &quot;fido&=
quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;branch&quot;: &quot;fido&q=
uot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;defaultlayers&quot;: [ &qu=
ot;openembedded-core&quot;, &quot;meta-yocto&quot;, &quot;meta-yocto-bsp&qu=
ot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;layersourcepriority&quot;:=
 { &quot;Imported layers&quot;: 99, &quot;Local Yocto Project&quot; : 10, &=
quot;OpenEmbedded&quot; :=C2=A0 0 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;helptext&quot;: &quot;Toas=
ter will run your builds with the tip of the &lt;a href=3D\&quot;<a href=3D=
"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=3Dfido\" target=3D"_=
blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=3Dfido\</a>&qu=
ot;&gt;Yocto Project 1.8 \&quot;Fido\&quot;&lt;/a&gt; branch.&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;name&quot;: &quot;diz=
zy&quot;,<br>
@@ -89,7 +104,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;branch&quot;: &quot;d=
izzy&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;defaultlayers&quot;: =
[ &quot;openembedded-core&quot;, &quot;meta-yocto&quot;, &quot;meta-yocto-b=
sp&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;layersourcepriority&q=
uot;: { &quot;Imported layers&quot;: 99, &quot;Local Yocto Project&quot; : =
10, &quot;OpenEmbedded&quot; :=C2=A0 0 },<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;helptext&quot;: &quot;Toas=
ter will run your builds with the &lt;a href=3D\&quot;<a href=3D"https://ww=
w.yoctoproject.org/downloads/core/dizzy1\" target=3D"_blank">https://www.yo=
ctoproject.org/downloads/core/dizzy1\</a>&quot;&gt;Yocto Project 1.7 \&quot=
;Dizzy\&quot;&lt;/a&gt; release&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;helptext&quot;: &quot;Toas=
ter will run your builds with the tip of the &lt;a href=3D\&quot;<a href=3D=
"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=3Ddizzy\" target=3D"=
_blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=3Ddizzy\</a>&=
quot;&gt;Yocto Project 1.7 \&quot;Dizzy\&quot;&lt;/a&gt; branch.&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;name&quot;: &quot;loc=
al&quot;,<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--047d7b5d483c88545a05121e65c0--
