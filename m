Subject: #yocto How to access a varibale exported by the shell in a recepie
To: poky@lists.yoctoproject.org
From: jjvazha@yahoo.com
X-Originating-Location: San Jose, California, US (96.68.159.213)
X-Originating-Platform: Mac Firefox 77
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 16:22:20 -0700
Message-ID: <DSy7.1592436140449998284.HX8O@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2IZxYwOoR2DCCjbGmkRA"

--2IZxYwOoR2DCCjbGmkRA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

0

I have a yocto recepie file. However I want to set a value to the variable=
 , by exporting a variable

For example I modified I added a variable in oe-init-build-env, ( whihc ca=
lls 'svn_util')

export REPO_BRANCH_ROOT=3D${REPO_BRANCH_ROOT}

The REPO_BRANCH_ROOT variable is set by running a utility 'svn_util', by l=
ooking at by current branch.

Now in my recepie.bb file SRC_URI =3D "\ svn://${REPO_ROOT_NO_URI}/${REPO_=
BRANCH_ROOT}/sample module=3Dmymodule;protocol=3Dprotocol=3Dhttp;rev=3DHEAD=
 \ "

However do_fetch: fails as follows. Fetcher failure for URL: 'svn://${REPO=
_ROOT_NO_URI}/${REPO_BRANCH_ROOT}/sample;module=3Dmymodule;protocol=3Dhttp;=
rev=3DHEAD'. Unable to fetch URL from any source.

How do I make .bb file to be aware of my current branch and reposotory uri=
 . I do not want to hard code it in the bb file, or local.conf file . Becua=
se if the .bb file is checked in to a different branch it should work corre=
ctly across all branch.

Or to rephrase the question , How a shell exported variable be accessed in=
 the recepie file.

--2IZxYwOoR2DCCjbGmkRA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"js-vote-count grid--cell fc-black-500 fs-title grid fd-column=
 ai-center" data-value=3D"0">0</div>
<div class=3D"votecell post-layout--left">
<div class=3D"js-voting-container grid fd-column ai-stretch gs4 fc-black-2=
00" data-post-id=3D"62439098">&nbsp;</div>
</div>
<div class=3D"post-text">
<p>I have a yocto recepie file. However I want to set a value to the varia=
ble , by exporting a variable</p>
<p>For example I modified I added a variable in oe-init-build-env, ( whihc=
 calls 'svn_util')</p>
<p>export REPO_BRANCH_ROOT=3D${REPO_BRANCH_ROOT}</p>
<p>The REPO_BRANCH_ROOT variable is set by running a utility 'svn_util', b=
y looking at by current branch.</p>
<p>Now in my recepie.bb file SRC_URI =3D "\ svn://${REPO_ROOT_NO_URI}/${RE=
PO_BRANCH_ROOT}/sample module=3Dmymodule;protocol=3Dprotocol=3Dhttp;rev=3DH=
EAD \ "</p>
<p>However do_fetch: fails as follows. Fetcher failure for URL: 'svn://${R=
EPO_ROOT_NO_URI}/${REPO_BRANCH_ROOT}/sample;module=3Dmymodule;protocol=3Dht=
tp;rev=3DHEAD'. Unable to fetch URL from any source.</p>
<p>How do I make .bb file to be aware of my current branch and reposotory =
uri . I do not want to hard code it in the bb file, or local.conf file . Be=
cuase if the .bb file is checked in to a different branch it should work co=
rrectly across all branch.</p>
<p>Or to rephrase the question , How a shell exported variable be accessed=
 in the recepie file.</p>
</div>

--2IZxYwOoR2DCCjbGmkRA--
