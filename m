Subject: do_image_wic fails with --include-path
To: poky@lists.yoctoproject.org
From: "Vijai Kumar K" <vijaikumar.kanagarajan@gmail.com>
X-Originating-Location: Noida, Uttar Pradesh, IN (192.94.34.34)
X-Originating-Platform: Windows Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 20 Aug 2020 22:55:13 -0700
Message-ID: <VCz7.1597989313384686338.q8z1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TPLLlppRpP2HfJERwI3U"

--TPLLlppRpP2HfJERwI3U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I was trying to build and image for beaglebone using the latest poky.

I wanted to add an external custom file to the rootfs and hence modified t=
he=C2=A0meta-yocto-bsp/wic/beaglebone-yocto.wks as follows.
+part / --source rootfs --ondisk mmcblk --fstype=3Dext4 --label root --ali=
gn 4 --use-uuid --include-path=3D/media/data/workspace/platform/yocto/test

But then the build failed complaining about missing tar-native.

f-native', 'meson-native', 'itstool-native', 'xmlto-native', 're2c-native'=
, 'gettext-native', 'gpgme-native', 'libcheck-native', 'gob
ject-introspection-native', 'json-c-native', 'libmodulemd-native', 'docboo=
k-xml-dtd4-native', 'docbook-xsl-stylesheets-native', 'libx
slt-native', 'libgpg-error-native', 'libassuan-native', 'libyaml-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_image_wic
| INFO: Creating image(s)...
|
| ERROR: A native program tar required to build the image was not found (s=
ee details above).
|
| Please make sure wic-tools have tar-native in its DEPENDS, build it with=
 'bitbake wic-tools' and try again.
|
|
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/media/data/workspace/platform/yocto/poky-latest/bu=
ild/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image
-minimal/1.0-r0/temp/run.do_image_wic.6184' failed with exit code 1:
| INFO: Creating image(s)...
|
| ERROR: A native program tar required to build the image was not found (s=
ee details above).
|
| Please make sure wic-tools have tar-native in its DEPENDS, build it with=
 'bitbake wic-tools' and try again.
|
|
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/media/data/workspace/platform/yocto/poky-latest/meta/recipes=
-core/images/core-image-minimal.bb:do_image_wic) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3849 tasks of which 3848 didn't need to be =
rerun and 1 failed.

Is --include-path supported yet in poky?

Thanks,
Vijai Kumar K

--TPLLlppRpP2HfJERwI3U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I was trying to build and image for beaglebone using the=
 latest poky.<br /><br />I wanted to add an external custom file to the roo=
tfs and hence modified the&nbsp;meta-yocto-bsp/wic/beaglebone-yocto.wks as =
follows.<br />+part / --source rootfs --ondisk mmcblk --fstype=3Dext4 --lab=
el root --align 4 --use-uuid --include-path=3D/media/data/workspace/platfor=
m/yocto/test<br /><br />But then the build failed complaining about missing=
 tar-native.<br /><br />
<div>f-native', 'meson-native', 'itstool-native', 'xmlto-native', 're2c-na=
tive', 'gettext-native', 'gpgme-native', 'libcheck-native', 'gob</div>
<div>ject-introspection-native', 'json-c-native', 'libmodulemd-native', 'd=
ocbook-xml-dtd4-native', 'docbook-xsl-stylesheets-native', 'libx</div>
<div>slt-native', 'libgpg-error-native', 'libassuan-native', 'libyaml-nati=
ve']</div>
<div>| DEBUG: Python function extend_recipe_sysroot finished</div>
<div>| DEBUG: Executing shell function do_image_wic</div>
<div>| INFO: Creating image(s)...</div>
<div>|</div>
<div>| ERROR: A native program tar required to build the image was not fou=
nd (see details above).</div>
<div>|</div>
<div>| Please make sure wic-tools have tar-native in its DEPENDS, build it=
 with 'bitbake wic-tools' and try again.</div>
<div>|</div>
<div>|</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Execution of '/media/data/workspace/platform/yocto/poky-late=
st/build/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image</div>
<div>-minimal/1.0-r0/temp/run.do_image_wic.6184' failed with exit code 1:<=
/div>
<div>| INFO: Creating image(s)...</div>
<div>|</div>
<div>| ERROR: A native program tar required to build the image was not fou=
nd (see details above).</div>
<div>|</div>
<div>| Please make sure wic-tools have tar-native in its DEPENDS, build it=
 with 'bitbake wic-tools' and try again.</div>
<div>|</div>
<div>|</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>|</div>
<div>ERROR: Task (/media/data/workspace/platform/yocto/poky-latest/meta/re=
cipes-core/images/core-image-minimal.bb:do_image_wic) failed with exit code=
 '1'</div>
<div>NOTE: Tasks Summary: Attempted 3849 tasks of which 3848 didn't need t=
o be rerun and 1 failed.<br /><br />Is --include-path supported yet in poky=
?<br /><br />Thanks,<br />Vijai Kumar K</div>

--TPLLlppRpP2HfJERwI3U--
