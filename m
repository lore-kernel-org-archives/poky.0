Subject: [hardknott][PATCH] license: add package URLs to license.manifest
To: poky@lists.yoctoproject.org
From: dirk.richter@softing.com
X-Originating-Location: Rattenkirchen, Bavaria, DE (213.30.210.169)
X-Originating-Platform: Windows Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 Dec 2022 05:11:10 -0800
Message-ID: <8fxp.1670850670311561291.iLcc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r3jJiqCIvZYVRCMbNAqw"

--r3jJiqCIvZYVRCMbNAqw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Manufacturers of embedded systems are obliged to publish information
to the used open-source software components. Additionally the URLs for
accessing these software components are a useful or even necessary
information. Therefore these URLs are added to the package information
listed in the license.manifest file.

Signed-off-by: Dirk Richter <dirk.richter@softing.com>
---
meta/classes/license.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 ++
meta/classes/license_image.bbclass | 23 ++++++++++++++++++++++-
2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/meta/classes/license.bbclass b/meta/classes/license.bbclass
index 0d0faa28d7..83bf1da41f 100644
--- a/meta/classes/license.bbclass
+++ b/meta/classes/license.bbclass
@@ -50,6 +50,8 @@ def get_recipe_info(d):
info["PV"] =3D d.getVar("PV")
info["PR"] =3D d.getVar("PR")
info["LICENSE"] =3D d.getVar("LICENSE")
+=C2=A0 =C2=A0 info["SRC_URI"] =3D d.getVar("SRC_URI")
+=C2=A0 =C2=A0 info["LIC_FILES_CHKSUM"] =3D d.getVar("LIC_FILES_CHKSUM")
return info

def add_package_and_files(d):
diff --git a/meta/classes/license_image.bbclass b/meta/classes/license_imag=
e.bbclass
index 73cebb4d55..16a39fce3d 100644
--- a/meta/classes/license_image.bbclass
+++ b/meta/classes/license_image.bbclass
@@ -72,7 +72,28 @@ def write_license_files(d, license_manifest, pkg_dic, ro=
otfs=3DTrue):
license_file.write("PACKAGE NAME: %s\n" % pkg)
license_file.write("PACKAGE VERSION: %s\n" % pkg_dic[pkg]["PV"])
license_file.write("RECIPE NAME: %s\n" % pkg_dic[pkg]["PN"])
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 license_file.write=
("LICENSE: %s\n\n" % pkg_dic[pkg]["LICENSE"])
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 license_file.write=
("LICENSE: %s\n" % pkg_dic[pkg]["LICENSE"])
+
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Add SRC_URIs to =
license.manifest from recipeinfo files
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkg_dic[pkg]["SRC_=
URI"] =3D ""
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 licdir =3D os.path=
.join(d.getVar('LICENSE_DIRECTORY'), pkg_dic[pkg]["PN"])
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exists(=
licdir):
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 with=
 open(os.path.join(licdir, "recipeinfo"), "r") as f:
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 for line in f.readlines():
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 key,val =3D line.split(": ", 1)
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if key =3D=3D "SRC_URI":
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uri =3D val.split()
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if len(uri) > 0:
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if "file://" not in ur=
i[0]:
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pkg_dic[=
pkg]["SRC_URI"] =3D uri[0]
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.warn(=
"No source URL available for %s" % (pkg_dic[pkg]["PN"]))
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.warn("No source URL=
 available for %s" % (pkg_dic[pkg]["PN"]))
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.n=
ote("No license information available for %s" % (pkg_dic[pkg]["PN"]))
+
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 license_file.write=
("SRC_URI: %s\n\n" % pkg_dic[pkg]["SRC_URI"])

# If the package doesn't contain any file, that is, its size is 0, the lice=
nse
# isn't relevant as far as the final image is concerned. So doing license c=
heck
--
2.17.1

--r3jJiqCIvZYVRCMbNAqw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Manufacturers of embedded systems are obliged to publish information</=
div>
<div>to the used open-source software components. Additionally the URLs for=
</div>
<div>accessing these software components are a useful or even necessary</di=
v>
<div>information. Therefore these URLs are added to the package information=
</div>
<div>listed in the license.manifest file.</div>
<div>&nbsp;</div>
<div>Signed-off-by: Dirk Richter &lt;dirk.richter@softing.com&gt;</div>
<div>---</div>
<div>&nbsp;meta/classes/license.bbclass&nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; 2=
 ++</div>
<div>&nbsp;meta/classes/license_image.bbclass | 23 ++++++++++++++++++++++-<=
/div>
<div>&nbsp;2 files changed, 24 insertions(+), 1 deletion(-)</div>
<div>&nbsp;</div>
<div>diff --git a/meta/classes/license.bbclass b/meta/classes/license.bbcla=
ss</div>
<div>index 0d0faa28d7..83bf1da41f 100644</div>
<div>--- a/meta/classes/license.bbclass</div>
<div>+++ b/meta/classes/license.bbclass</div>
<div>@@ -50,6 +50,8 @@ def get_recipe_info(d):</div>
<div>&nbsp; &nbsp; &nbsp;info["PV"] =3D d.getVar("PV")</div>
<div>&nbsp; &nbsp; &nbsp;info["PR"] =3D d.getVar("PR")</div>
<div>&nbsp; &nbsp; &nbsp;info["LICENSE"] =3D d.getVar("LICENSE")</div>
<div>+&nbsp; &nbsp; info["SRC_URI"] =3D d.getVar("SRC_URI")</div>
<div>+&nbsp; &nbsp; info["LIC_FILES_CHKSUM"] =3D d.getVar("LIC_FILES_CHKSUM=
")</div>
<div>&nbsp; &nbsp; &nbsp;return info</div>
<div>&nbsp;</div>
<div>&nbsp;def add_package_and_files(d):</div>
<div>diff --git a/meta/classes/license_image.bbclass b/meta/classes/license=
_image.bbclass</div>
<div>index 73cebb4d55..16a39fce3d 100644</div>
<div>--- a/meta/classes/license_image.bbclass</div>
<div>+++ b/meta/classes/license_image.bbclass</div>
<div>@@ -72,7 +72,28 @@ def write_license_files(d, license_manifest, pkg_di=
c, rootfs=3DTrue):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;license_=
file.write("PACKAGE NAME: %s\n" % pkg)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;license_=
file.write("PACKAGE VERSION: %s\n" % pkg_dic[pkg]["PV"])</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;license_=
file.write("RECIPE NAME: %s\n" % pkg_dic[pkg]["PN"])</div>
<div>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; license_file.=
write("LICENSE: %s\n\n" % pkg_dic[pkg]["LICENSE"])</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; license_file.=
write("LICENSE: %s\n" % pkg_dic[pkg]["LICENSE"])</div>
<div>+</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Add SRC_URI=
s to license.manifest from recipeinfo files</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pkg_dic[pkg][=
"SRC_URI"] =3D ""</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; licdir =3D os=
.path.join(d.getVar('LICENSE_DIRECTORY'), pkg_dic[pkg]["PN"])</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if os.path.ex=
ists(licdir):</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 with open(os.path.join(licdir, "recipeinfo"), "r") as f:</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; for line in f.readlines():</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; key,val =3D line.split(": ", 1)</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; if key =3D=3D "SRC_URI":</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; uri =3D val.split()</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if len(uri) &gt; 0:</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if "file://" not i=
n uri[0]:</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pkg_=
dic[pkg]["SRC_URI"] =3D uri[0]</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else:</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; bb.w=
arn("No source URL available for %s" % (pkg_dic[pkg]["PN"]))</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else:</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; bb.warn("No source=
 URL available for %s" % (pkg_dic[pkg]["PN"]))</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else:</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 bb.note("No license information available for %s" % (pkg_dic[pkg]["PN"]))<=
/div>
<div>+</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; license_file.=
write("SRC_URI: %s\n\n" % pkg_dic[pkg]["SRC_URI"])</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# If the=
 package doesn't contain any file, that is, its size is 0, the license</div=
>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# isn't =
relevant as far as the final image is concerned. So doing license check</di=
v>
<div>--&nbsp;</div>
<div>2.17.1</div>
<div>&nbsp;</div>

--r3jJiqCIvZYVRCMbNAqw--
