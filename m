Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 786734C8016A
	for <poky@yoctoproject.org>; Thu, 26 May 2011 07:14:43 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 May 2011 05:14:41 -0700
X-ExtLoop1: 1
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 26 May 2011 05:14:41 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 26 May 2011 20:14:38 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 26 May 2011 20:14:38 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 26 May 2011 20:14:37 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 26 May 2011 20:14:35 +0800
Thread-Topic: Exception in sstate_cleanall() results in the failure of task
	do_clean 
Thread-Index: AcwbnnppVuzCZLM0Qs6MbSXhqrKsvw==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F232DBFB0FF@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Exception in sstate_cleanall() results in the failure of task do_clean
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
X-List-Received-Date: Thu, 26 May 2011 12:14:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

I recently ran into a do_clean failure using the following scenario:

1. set PACKAGE_CLASSES to 'package_ipk' in local.conf
2. bitbake foo
3. set PACKAGE_CLASSES to 'package_rpm' in local.conf
4. bitbake foo -c clean

The do_clean in step 4 failed without printing any useful information. I du=
g into a little bit, and found the failure was caused by an exception in th=
e function sstate_cleanall() :

  for manifest in (os.listdir(manifest_dir)):
        if fnmatch.fnmatch(manifest, manifest_pattern):
             name =3D manifest.replace(manifest_pattern[:-1], "")
             namemap =3D d.getVar('SSTATETASKNAMES', True).split()
             tasks =3D d.getVar('SSTATETASKS', True).split()
             taskname =3D tasks[namemap.index(name)]
             shared_state =3D sstate_state_fromvars(d, taskname[3:])
             sstate_clean(shared_state, d)

This code snippet tries to find the matching manifest files in minfest dir,=
 then trying to get the task specific shared_state corresponding to the mat=
ching manifest file. The problem is when finding the shared_state for manif=
est file of deploy_ipk(generated because of step 1), the python code "namem=
ap.index(name)" would throw out an exception because the SSTATETASKNAMES do=
esn't have that value(because of step 3). This would result the failure.

I'm just wondering is it intentional? Or should it just skip the non-exists=
 deploy_ipk task and continue to clean by other manifest files?

Best Regards,
-Lianhao

