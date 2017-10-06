Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35819E00DAB; Fri,  6 Oct 2017 15:13:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.62 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 15360 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Oct 2017 15:13:03 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0062.outbound.protection.outlook.com [104.47.34.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDBA8E00D8F
	for <poky@yoctoproject.org>; Fri,  6 Oct 2017 15:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=i77ayu826nFBBHAYcui3l6CWOZHD9T4Bho5BP0YYKvs=;
	b=DszvzBACHSpQQxbMFwwL+XtBGSd7xP+BxgW3ra9iGt8HNSwOkhUrNoFQYpRFlqqwz3KyS378WjVIKmNaePldOA1D0r80xql55waQFAV+oDs2QV3VCGbUkMA/Zcrgm0z0b+lJ0DLZCaYa6PM8mTgUIejJJejL8HJUSBd3Xw5jtQk=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=mkelly@xevo.com; 
Received: from columbia.corp.xevo.com (65.122.179.226) by
	CY4PR0101MB2934.prod.exchangelabs.com (10.171.223.139) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 6 Oct 2017 17:42:37 +0000
From: Martin Kelly <mkelly@xevo.com>
To: poky@yoctoproject.org
Date: Fri,  6 Oct 2017 10:42:12 -0700
Message-Id: <20171006174212.15669-1-mkelly@xevo.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: MWHPR1001CA0001.namprd10.prod.outlook.com (10.174.165.14)
	To CY4PR0101MB2934.prod.exchangelabs.com (10.171.223.139)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8b7150ce-4daf-44e1-97f4-08d50ce1a265
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:CY4PR0101MB2934; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2934;
	3:NNXfCXaEFfR+7tYT1v+ZKtTLZIaDhTHpv7oGSFqXIgNNPQ9m/YQOvVhC5HkC+bsD2U9qmLd0UdX57mxyzeU5JFIENMPMGCJhbO6rZ9UKDRYPKBx8cFLIod32PtSmM6RNopQyZj+7wlyLC+5fsG3zkgtxRn2aMSxd82rJxjAn1RMMWiW4eVekOqwAwBkXDKeMwtCS7++ipwfyYUiWgTQps1cN+CeCIb/V4UktJ824+Av6bMiezj8+fANU7kM0Q2RX;
	25:hgnERRg7b70Bn/VOqsFZ95nfY2f6ovMPfFvFAdX8Y1t87nis/JJUvnpjaMrJ0LxO6ixQI7xOVhSNhcq1Lkc14/5/SqHPXRi4fsxpfH1FbThrwmZpaZatDyA+s5Xj+jTiKz2M1OvztdVmkoKJt5oAJqmGuAvD4KDuMCIP+cizr74bWtUdR3+ktIs54ceg19aC59mi8+CDJZ7S/BVweq0CzWCPhF/S31kf7qmHiezInjAmAGRq/8xDhO77Dx//yd4baU2PfgT48UPDVRHk6ni5p+G1V8blGJUMIQPRbXE2bSdUP+qNr7AaHRgVSTp6YooMICu3OzdYdrEPrp1xmEWLvw==;
	31:iwJAHsiTOQ4uLXGOu9jOgnO57eAiVWr7Y7BkJEPpxOQ1rv1wtt4XBv4QeHRoJVVJ35s7OKO8VFLsXjAZnzOafHcFCTiW8LJNstUEhY0aOQQGa8XpM27Rnbaz+AtrNXEUqL0g6spVUH8+U6bzJeBQw1NFb5yOEPGR3u+Pg2vCvB0GXI9NUexfrM8Mup4TZilEmWGafsxKoFfVN64dVwGZ1iYEg2O/huBEAGStpBQrNXg=
X-MS-TrafficTypeDiagnostic: CY4PR0101MB2934:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2934;
	20:ObiR4H5DjYJTbTlK2t+7/T5ObgGRWurltdLJ+VAlJgN3n7npZxNrDJfNuJr8T92bAcNBt0frl3zDdWQL+46wbmUpg04JtwvojPFXo1FQbOhc542/mYBPUsarconM2lZRGx4JOr/22Axb8lufuu/Tejs+FDZoHjCDysfR5UOPu15XNGL/JnONzTu6DGbz67dT4vKJ01xtib6DhX6q9DvUqWCjPCTfxRftuuo/hGSzm0h+I+gzBSo/msTfBxHrUJgLGwz7XaCIs9dKh26+sAZkmRP7U597H84W7CNuFUijMRMpvO1LcRJc0JxA0uxsD8Fm8wBf9nzCqgiGgDlQUPvyOuwYDWN3JzGfo2eDGwT2CGnUzdSjt3bSJeeaOi3/ZpblcAm4dcQIyehShhm5hIVA34BFRefhwbwQQmAUFVu4vJ8=;
	4:9HTZmUGzIa3xrRXmqsEVdlb2qV4nHf6a8wXJNW5g1Z4Slqr7uLT/r/Il+RfLPMHVcjAdpOBYl/DFf/FbsI9IRPvP/sAn5pm3+LEhFQRYI6joHsKcYQU0C7jVWcp7Qfo9/6pV9WegLxg4216+jLUEtsUXiwaBGzzbVVJOvdq3YIArKFuApyu0Yy7tE9pc8EyyCPTg2N05BWMT2Wx8Mjkbfi73FLQde2KKUqqFBsiITEB4MVP4T72xE6V67F7Dtfs9
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <CY4PR0101MB29346EE4A618D25BAE542FC9AB710@CY4PR0101MB2934.prod.exchangelabs.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(6041248)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123562025)(20161123555025)(20161123560025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR0101MB2934; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR0101MB2934; 
X-Forefront-PRVS: 0452022BE1
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6009001)(346002)(376002)(39830400002)(189002)(199003)(7736002)(53936002)(81156014)(8676002)(478600001)(4326008)(107886003)(105586002)(81166006)(6486002)(25786009)(189998001)(6916009)(16586007)(3846002)(50466002)(68736007)(36756003)(8936002)(6116002)(316002)(50226002)(50986999)(6666003)(1076002)(86362001)(47776003)(106356001)(5660300001)(97736004)(305945005)(33646002)(66066001)(2351001)(101416001)(2906002)(48376002)(2361001)(5003940100001)(16526018);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR0101MB2934;
	H:columbia.corp.xevo.com; FPR:; SPF:None; PTR:InfoNoRecords;
	MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY4PR0101MB2934;
	23:qB7HW2iuTwRujIxmSa3fh/TI8BniibLIfRn2F3z?=
	=?us-ascii?Q?h680fvaU+A1nkl8Rz9Cu4qYgnM6HQoZ9THCGH0eGeYRJGR3O+U6GQcsd84g9?=
	=?us-ascii?Q?Fl5dRKCJkWBLtgG3S4UnGDBioSmKte2Rh+O5BTelKnGwgc9qegrALkTxlFAb?=
	=?us-ascii?Q?SyPzCGod6P5PEIbL4zzuXY5FZpD6DE/xQktpXjgfLiNuVsx+WEJR/SgDiE6D?=
	=?us-ascii?Q?2+8UVyO2HB6f0kmf8ljym8WHv75ZmXt9CICynLvMUgJaCWdxQnAXLEPJPRQ8?=
	=?us-ascii?Q?IVG9/5xnBYTEu2yHU9fxS7PAdaUDd1WyVxaFNRYwbeuFZ80MlDmCY3G1hIoV?=
	=?us-ascii?Q?/z6ROy7VTV1LT33tXUC/v0Jh3ctwcR3yz8s/P9pbIjPRO31SOWfOw7rjv4+x?=
	=?us-ascii?Q?QcRTg2YmxMYTzfD9E/KAETqG9xAJEMnjjIMMR5VceeJO34cS9D0/xFAb5xAv?=
	=?us-ascii?Q?lsGd1j6rkDiirQVg1QqFGN0uGOSV6DBvrWiFPcQgPhYOwjCqMs7NlW6S0W0g?=
	=?us-ascii?Q?vyJr7b4eBhdB713HW01D2gdcfQYgKPT4MRtOhPVx+GdklbLZ/v5++BhXb7+W?=
	=?us-ascii?Q?LhEMiBWU+ScqCuCCJfPkFQODpSU6BNcasUeaFGDTT3Fu+ZfwPI+/l4Bp+dnh?=
	=?us-ascii?Q?zxD5aN9m5ZyQQo+tvHxJPa9oDU749WXI/fqackGrOxh/EWUzMB46uuc6DDA4?=
	=?us-ascii?Q?9GWMtx4zigbR+fUwQnf7+B1a1Jc5RufHwyl7vHrj2+9pCTroOwLdFHjK2gHu?=
	=?us-ascii?Q?+c/pzKQXZKLdVS0rNzORJCY81554yp8TObPO+R1fvkEMr4hNzxeYwtL8GXyK?=
	=?us-ascii?Q?y3SzxfF5Lq1WTK7Qeo9sEH2de+poRqMyS/X/NrAAIygSYpemgoDQnW5ZiIJl?=
	=?us-ascii?Q?ty9Zg+oVmJg7A3lpOMIpwgxWW0YVPjKVCs5EqjHACb0ksXSIc8aHuD5apcYc?=
	=?us-ascii?Q?zgXVHMAvq889u0ZGfMsdLllEbbzVJoqa7iwLXUT1WfNH2doCIJ1yQ9YSdWlQ?=
	=?us-ascii?Q?VfGlqHakTspEt+rcrYgx87g+n6wyEUaa2rK1SmiM3INZ7VZxrKfRxwDojg4l?=
	=?us-ascii?Q?r6V37O+/Ocp5XWU/u1gjjERJPQ3s1?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2934;
	6:vYRHQXUR2zzxHWPz0wvTxCs5Fbc5AYLerRDEKnYE5B0xP42e95fW8HTSDr6atXg6MvSUJ4X+gQdagGAztexN2KWAMKo6zZkdcd1Ra/gDlg4dDUfoSuW/xpyipV0+quAAVW2i2aDNEfeixxlx08hZOucbnl4dKwOXruBYND2IVl+JOue3g0TTW4H4vI4Z9bId0SrFiavzOysoS8TQ7AkX1fBWCMUsIuU5d93IpIUJNMa5ttv1rvFJiY9LqJbJ2TIrOxg9tkEuviEorGME8QnxuwwDzG4RtKJId0EZgahbVEE/naSb1j6yqn/hwtaGl6efwSrVN5TpiQyrR7P7B4TRhQ==;
	5:nGRUBV8BSDC5DnPQl621dEVx7/BU2vnn8MrvJmTW3DG6nWrs23TnPqLsaV/OQm4eJuVSapcxUaurIsKmCItVRlcYplJiVrsOGy8Su0ElCHWxxeS12imE4pV78K4bPtV/xfQB2ykY8Bahdo+Hyce5iA==;
	24:F9qdeeTH0bIediIDqF3XBSkYkQgZ6KMcgP24G3VP5G6LexnjpktkD7CoYmlFB9dNA4E+xvBz7QrQVTVEu+njfBnaP9xmtORoUpmOJN9/8JI=;
	7:1+XcVOPgRIWyiegyc7nFMo/bg4bkgOG3gVqTzIyAZGbFM1UTKZooUw2+OgaGUk0GeE4CDOXOA4lXr6Gnkunc95L8gAF03rJd9u9dReCDZx71NODp/PG1/nDwKA/iI3d8xdOhoevw16BZ6Y7BQOALA+LgEJzLG6C5NPR7UZLk4QzjtVsX7OIkSXlp9d7Ec1Qkm79vcml5RC6iBDNdvviEfy0KLQUCX8SK7Ofcq3CkmLc=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2017 17:42:37.3441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0101MB2934
Subject: [PATCH] poky: add debian-9 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 06 Oct 2017 22:13:05 -0000
Content-Type: text/plain

I have been working with OE on debian-9 for several months now without
issue. In addition, I tested a build + runqemu for core-image-sato
following the quickstart guide and had no issues.

Signed-off-by: Martin Kelly <mkelly@xevo.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5b8eeb2..6d365e0 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -75,6 +75,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-26 \n \
             centos-7 \n \
             debian-8 \n \
+            debian-9 \n \
             opensuse-42.1 \n \
             opensuse-42.2 \n \
             "
-- 
2.11.0


