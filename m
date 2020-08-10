Subject: Building an #esdk under yocto 2.7.4 including #qt5 from meta-qt5
To: poky@lists.yoctoproject.org
From: kwiesen@topcon.com
X-Originating-Location: Geisenheim, Hesse, DE (93.95.130.213)
X-Originating-Platform: Windows Firefox 77
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Aug 2020 04:44:46 -0700
Message-ID: <uNzE.1597059886404537264.ZDCR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sxOMXGcoeYBESg3FK1mk"

--sxOMXGcoeYBESg3FK1mk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

I am familiarizing with the esdk and try to build an esdk for our system u=
nder yocto warrior 2.7.4. Everything works until I add qt5 from meta-qt5 to=
 the image. The build runs without any error message or warning but install=
ation fails at the last installation step while testing the esdk.
Following error message is shown:

/workspace/toolchain/egspro/esdk/sysroots/x86_64-pokysdk-linux/usr/bin/pyt=
hon3: line 5: /workspace/toolchain/egspro/esdk/sysroots/x86_64-pokysdk-linu=
x/usr/bin/python3.7.real: No such file or directory
post-relocate command "/workspace/toolchain/egspro/esdk/sysroots/x86_64-po=
kysdk-linux/post-relocate-setup.d/meson-setup.py /workspace/toolchain/egspr=
o/esdk" failed with status 127
SDK has been successfully set up and is ready to be used.

I tried to analyze the problem and found out that the problem results in a=
 combination of poky and meta-qt5.
If I understand the esdk correct all required tools to run the esdk are in=
stalled to buildtools/sysroots/x86_64-pokysdk-linux/usr/bin/. While install=
ation the relocate_sdk.py script fixes all hosttools paths linker paths and=
 so on to the installation path set by user. Further I found out that if I =
build the image including qt5 the hosttools are installed a second time to =
sysroots/x86_64-pokysdk-linux/usr/bin/.
Both file paths are set in the PATH environment variable. The relocation s=
cript is only executed on buildtools/sysroots/ path and the files in sysroo=
ts/x86_64-pokysdk-linux/usr/bin/ are not fixed. The system tries to execute=
 the wrong files which results in the error message above. In my oppinion t=
he files in the sysroots folder must not be placed there but in buildtools/=
sysroot/x86_64-pokysdk-linux/usr/bin/.
Further analysis showed that meta-qt5/recipes-qt/packagegroups/nativesdk-p=
ackagegroup-qt-toolchain-host.bb has set RDEPENDS_${PN} +=3D "nativesdk-pac=
kagegroup-sdk-host". If I remove this dependency the hosttools are not dupl=
icated to sysroots/x86_64-pokysdk-linux/usr/bin/.
This seems for me to be a problem with any sdk path variables (${SDK_OUTPU=
T}, ${SDKPATHNATIVE}, ${bindir} or other) which are generated inside poky l=
ayer. I don't understand why the installation runs correctly if this depend=
ency is not set and why the hosttools are installed a second time if depend=
ency is set. For my understanding setting a runtime dependency should not c=
hange any path variable.
Additionally I looked up for known bugs and fixes and forum posts but did =
not sth. matching to my problem. Does anybody here has some idea or possibl=
y the same problem?

Thanks and regards
Klaus

--sxOMXGcoeYBESg3FK1mk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all, <br /><br />I am familiarizing with the esdk and try to build an es=
dk for our system under yocto warrior 2.7.4. Everything works until I add q=
t5 from meta-qt5 to the image. The build runs without any error message or =
warning but installation fails at the last installation step while testing =
the esdk.<br />Following error message is shown:<br /><br />/workspace/tool=
chain/egspro/esdk/sysroots/x86_64-pokysdk-linux/usr/bin/python3: line 5: /w=
orkspace/toolchain/egspro/esdk/sysroots/x86_64-pokysdk-linux/usr/bin/python=
3.7.real: No such file or directory<br />post-relocate command "/workspace/=
toolchain/egspro/esdk/sysroots/x86_64-pokysdk-linux/post-relocate-setup.d/m=
eson-setup.py /workspace/toolchain/egspro/esdk" failed with status 127<br /=
>SDK has been successfully set up and is ready to be used.<br /><br /><br /=
><br /><br />I tried to analyze the problem and found out that the problem =
results in a combination of poky and meta-qt5. <br />If I understand the es=
dk correct all required tools to run the esdk are installed to buildtools/s=
ysroots/x86_64-pokysdk-linux/usr/bin/. While installation the relocate_sdk.=
py script fixes all hosttools paths linker paths and so on to the installat=
ion path set by user. Further I found out that if I build the image includi=
ng qt5 the hosttools are installed a second time to sysroots/x86_64-pokysdk=
-linux/usr/bin/.<br />Both file paths are set in the PATH environment varia=
ble. The relocation script is only executed on buildtools/sysroots/ path an=
d the files in sysroots/x86_64-pokysdk-linux/usr/bin/ are not fixed. The sy=
stem tries to execute the wrong files which results in the error message ab=
ove. In my oppinion the files in the sysroots folder must not be placed the=
re but in buildtools/sysroot/x86_64-pokysdk-linux/usr/bin/. <br />Further a=
nalysis showed that meta-qt5/recipes-qt/packagegroups/nativesdk-packagegrou=
p-qt-toolchain-host.bb has set RDEPENDS_${PN} +=3D "nativesdk-packagegroup-=
sdk-host". If I remove this dependency the hosttools are not duplicated to =
sysroots/x86_64-pokysdk-linux/usr/bin/. <br />This seems for me to be a pro=
blem with any sdk path variables (${SDK_OUTPUT}, ${SDKPATHNATIVE}, ${bindir=
} or other) which are generated inside poky layer. I don't understand why t=
he installation runs correctly if this dependency is not set and why the ho=
sttools are installed a second time if dependency is set. For my understand=
ing setting a runtime dependency should not change any path variable.<br />=
Additionally I looked up for known bugs and fixes and forum posts but did n=
ot sth. matching to my problem. Does anybody here has some idea or possibly=
 the same problem?<br /><br />Thanks and regards<br />Klaus

--sxOMXGcoeYBESg3FK1mk--
