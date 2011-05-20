Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68B1F4C803D6;
	Thu, 19 May 2011 22:06:27 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 May 2011 20:06:26 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.255.12.125]) ([10.255.12.125])
	by orsmga002.jf.intel.com with ESMTP; 19 May 2011 20:06:26 -0700
Message-ID: <4DD5DAB2.9030806@intel.com>
Date: Thu, 19 May 2011 20:06:26 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Upcoming M1 RC cut off (now with new and improved process!)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 May 2011 03:06:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

All,

In preparation for our M1 upcoming stabilization period starting next week, on Friday May 19th, 5pm US Pacific time, we 
will be branching poky.git and meta-intel.git to 1.1_M1 and begin the autobuilder run after tagging the branch as 
1.1_M1.rc1. During the next two weeks, bug fixes and minor feature additions will be cherrypicked from master to the 
1.1_M1 branch. During this time, the autobuilder will be mostly devoted to either 1.1_M1, master or 
poky-contrib:stage/master_under_test with the general priority being 1.1_M1.

Some notes on the milestone release process as it has changed somewhat. Milestone branches are not permanent branches. 
These are stabilization branches used to create a milestone checkpoint. At the conclusion of the next milestone (M2), we 
will remove the prior milestone branch. Major/Minor branches are permanent branches and do not get removed.

Going forward, all potential release candidates (milestone, point and major/minor) in the poky.git and meta-intel.git 
repos will by tagged prior to being built by the autobuilder. In this case, the tags will be "1.1_M1.rcN". This ensures 
that the autobuilder will be pulling the exact tag across repositories. This process may extend to other repos in the 
future (eclipse-poky.git is one candidate, for example).

One new bit of process suggested by the community that I'll be implementing (thank you Wolfgang Denk.) is gpg signing of 
tags. The public GPG key I'll be using for this is attached below.

It can also be found on the MIT key server:
http://pgp.mit.edu:11371/pks/lookup?search=Yocto&op=index&fingerprint=on

and on the Build/Release/SCM Infrastructure wiki page:
https://wiki.yoctoproject.org/wiki/Build/SCM/Release_Interest_Group

The final release tag for 1.1_M1 will occur only after the RC has been fully vetted by QA.

---------------
Elizabeth Flanagan
Yocto Project
Release Engineer


-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1.4.10 (GNU/Linux)

mQENBE3VnhEBCADHRXFx4DTFEYQ/uT96Tuy0L6xXiJW6J0sypDIFxWzPMxW33pef
CNyuil80acWMUMTW+m3aTcplaLegD4+Y87OWtscd4Oz/WpssOdqu3GfWRJ8p0zJ1
ztc2SLmq19ZPW8T23w06HRPssbxTri8O/gbczsdK4t2SQ2YbCzsv0v8i2WTIdhjC
tfcSsJnH5VMmlsya2LYPTHVrurZ/BccNe8MUqZMkAFREmQVeCMf7O7YIB4Z3tSfX
12mZD9/M30i0oycRhtyfD9pyrC7xxGU4r+RG1c/EuWsz1qpzdy7L6nemWN5MqL5y
MH8NXovgA4yZzGllRjtJwy6ywtUxlSSNzv3XABEBAAG0U0VsaXphYmV0aCBGbGFu
YWdhbiAoWW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZSkgPGVsaXphYmV0
aC5mbGFuYWdhbkBpbnRlbC5jb20+iQE4BBMBAgAiBQJN1Z4RAhsDBgsJCAcDAgYV
CAIJCgsEFgIDAQIeAQIXgAAKCRDazhCxVC4ivl+6B/wMQvX45Yh+VSI2J8CDmBFY
tlBaBUlqHn7ilfWGg4PXvgYBAJHFU3jfDgTRdQRmFLgs0LAVwF+GYXF9ns7K/oag
QEx+uyE0gkA9atzl9VcEMM29lVIRmbAiif9ElPjYb/yz3TFKtAC55PzZ9UM/4VKc
FMeW4abcvvbOla1YjWDOEpxTK37jPHh+G+iDpDIXAKlNGgze0UYqsFXPYepOWLqB
i13/ERi1fFjwnBZ0nRrJoxp03nUAkYy/f5zjH1mPRZyjgxAnjf/07Ivb246Fiy0Y
iFVqMfiUNK9pwrHI0Tci2gF8ZVLGsbcfNPrjL3uKzGwIno/2DAz8huYiYyKXBRKy
uQENBE3VnhEBCADNkGJiAhwkEquajEnxBdvh7r5qEDDrsTBNwFSaZIKcaE4Le4Tv
jaTbk3dH0+1ZacE5Ie3/574jjXXJBvEtuEtNcMiEFz9oE62wMLNHohuHY9Oz0i8R
EUHX60fWmCzjW9A9bHx16XZWEZN+6touI4YU/MG8m9Md5I6yausyGj+vcC3KHTgK
zNYy14uuT+av5yO2IzOqdreDw/aGeWPFpla3Q2xbuRE2mPAKOJCuCkjyDPlHbwLA
6e+rdvV3RXq2OY3xRIOANPLq/okOdS0ghvhMsx5l03oliVoXSKcY20CxA0jinuR+
2DzF3np6gSwU9cYtolMDIqk0Eyv+QTNbice9ABEBAAGJAR8EGAECAAkFAk3VnhEC
GwwACgkQ2s4QsVQuIr6IhggAoRErygEaFF754JbdiM0JJdev4X1JHHA0T3WdmsZW
+Xo6lyHaT+roLNTR1xFkU8WHGuPBUp5zdIqbU6MnGcq1cvKPxjtBykzrmvjLJhby
nMW7deG/ByqSW97EMFUyaDFHbl1iwNlJdfQQ/OjNIundLev2EGq9f3u67WgrVC4w
LmFifhY0pGeBtqtD2odpl46pSVamVRkCySJU2qK+alkDIi4zGutc3bMb5TbPBl4q
ui8vto+Emk3UOPBgCze9Z7x3YzRP9euH2ZpSGH6oaV7ZLctD8d44NOyxXWkgxOK6
6vdkQR9+sBVa5fQgeEDm15Cu3/bszgP/NtI8oj8NzSYZYw==
=oHhw
-----END PGP PUBLIC KEY BLOCK-----

