Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88C074C80AAE
	for <poky@pokylinux.org>; Wed, 20 Apr 2011 23:18:57 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Apr 2011 21:18:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,249,1301900400"; d="scan'208";a="631856597"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 20 Apr 2011 21:18:55 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 21 Apr 2011 12:18:12 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 21 Apr 2011 12:18:11 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, Yocto Project Discussions
	<yocto@linux.intel.com>, "openembedded-core-bounces@lists.openembedded.org"
	<openembedded-core-bounces@lists.openembedded.org>
Date: Thu, 21 Apr 2011 12:18:10 +0800
Thread-Topic: [RFC] Request for your comment on package report system
Thread-Index: Acv/2x/ozLMzo9m2SPy1Y2uzqH1x/A==
Message-ID: <749B9D3DBF0F054390025D9EAFF47F224A66A18A@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [RFC] Request for your comment on package report system
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
X-List-Received-Date: Thu, 21 Apr 2011 04:18:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,
	This is a description for package report system, please help to review and=
 give your comments on this system. Thanks a lot!

The system link is below:
http://packages.yoctoproject.org/

Yocto package report system is a tool/website which could help people to ch=
eck the latest package information and track the latest/history version inf=
ormation. Below is description of its functionalities.


1) List all packages information
	It will list all packages latest information like version, upstream versio=
n, license, maintainer and so on.

2) Support sort
	We can sort packages by their name, license, maintainer and so on.

3) Support search package.
	We can search package by its name, version, license, section, revision or =
priority.

4) Track the upstream version change and send notification to mail list.
	The report system will track the package upstream version change and remin=
d maintainers to upgrade them by send mail to mail list weekly.=20
	It also lists all need to upgrade packages name on the webpage for easy re=
view.
	However, there are certain recipes which need manual upstream version chec=
k(currently the total number is about 60), their name also will be listed o=
n the webpage. We need to manual check these recipes periodically and chang=
e their status in distro_tracking_fields.inc.

5) Generate report=20
	We can get a report of all packages detail information in a csv spreadshee=
t

6) Generate bar chart of upgrade history and manual check history
	We can check the history informaiton through those bar chart, so we can se=
e the number of need to upgrade recipes or need to manual check recipes mor=
e clearly during upgrade work.

7) History database access
	We can access history database by their date so that we can track the upgr=
ade or manual check history data.


Now we want to do some enhancement for this system in 1.0.1 plan, so do you=
 have any comment or thought?
Any feedback is welcome :)


---
Mei, Lei
Email: lei.mei@intel.com



