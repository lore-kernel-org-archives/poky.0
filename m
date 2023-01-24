Subject: Preparation esdk failed, sstate cache do_package and do_populate_sysroot missing #esdk
To: poky@lists.yoctoproject.org
From: alouxndre@hotmail.fr
X-Originating-Location: Girona, Catalonia, ES (149.6.134.59)
X-Originating-Platform: Windows Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 24 Jan 2023 10:09:54 -0800
Message-ID: <bd6x.1674583794764420697.AXPz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9FEubeRt7lPNxwJQ4DVC"

--9FEubeRt7lPNxwJQ4DVC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm not able to deploy the esdk in running the sdk installer obtained thank=
s to -c populate_sdk_ext task. (Honister yocto version)

The populate_sdk_ext task goes well, with the 'full' sdk type enabled.
In the config, I should normally install also the sstate-cache for the comp=
onent listed in the image recipe.

But during the installation process, the installer triggers a kind of cache=
 checking.
At this moment it fails displaying a list of sstate-cache task missing for =
the components.
These tasks are do_package and do_populate_sysroot.

Indeed the cache for these tasks is not available in the sdk local sstate c=
ache since I can see them in the sstate-cache from the yocto env where I cr=
eated the esdk installer.
Moreover, i can see other sstate cache tasks and do_packagedata_setscene or=
 populate_lic_setscene happened without issue for example.

I think I miss something in the SDK config but I'm not able to figure out w=
hat.

Can you help me please :)

Cheers,

Alexandre

--9FEubeRt7lPNxwJQ4DVC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm not able to deploy the esdk in running the sdk installer=
 obtained thanks to -c populate_sdk_ext task. (Honister yocto version)<br /=
><br />The populate_sdk_ext task goes well, with the 'full' sdk type enable=
d.<br />In the config, I should normally install also the sstate-cache for =
the component listed in the image recipe.<br /><br />But during the install=
ation process, the installer triggers a kind of cache checking.<br />At thi=
s moment it fails displaying a list of sstate-cache task missing for the co=
mponents.<br />These tasks are do_package and do_populate_sysroot.<br /><br=
 />Indeed the cache for these tasks is not available in the sdk local sstat=
e cache since I can see them in the sstate-cache from the yocto env where I=
 created the esdk installer.<br />Moreover, i can see other sstate cache ta=
sks and do_packagedata_setscene or populate_lic_setscene happened without i=
ssue for example.<br /><br />I think I miss something in the SDK config but=
 I'm not able to figure out what.<br /><br />Can you help me please :)<br /=
><br />Cheers,&nbsp;<br /><br />Alexandre<br />

--9FEubeRt7lPNxwJQ4DVC--
