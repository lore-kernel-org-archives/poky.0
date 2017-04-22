Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44235E00A30; Fri, 21 Apr 2017 18:48:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4608 seconds by postgrey-1.32 at yocto-www;
	Fri, 21 Apr 2017 18:48:35 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0073.outbound.protection.outlook.com [104.47.42.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 697F5E0095F
	for <poky@yoctoproject.org>; Fri, 21 Apr 2017 18:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=h79r74txYLO38z4mb8qd17WDkvICq+J/X5VIJPnmFXQ=;
	b=Je2YCd5McNYT3S/E0iyWC0LclC25B2fnQ6R08m8Gh17I/aLZu7S6sYCyuS1YK7oRiMETOsX8q/7A2XyvqRINFFjsk8Jl/MXLYzjo1/MziQcupmpjoERqRwc9+L7NVz1RD8LbGlSqClSVhknVGpXWcDd1AFcpO4nmasdaRHHyhho=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from columbia.surround.io (65.122.179.226) by
	CY4PR01MB2679.prod.exchangelabs.com (10.172.135.13) with Microsoft SMTP
	Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1034.10; Sat, 22 Apr 2017 00:16:19 +0000
From: Martin Kelly <mkelly@xevo.com>
To: <poky@yoctoproject.org>
Date: Fri, 21 Apr 2017 17:21:19 -0700
Message-ID: <1492820479-2808-1-git-send-email-mkelly@xevo.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: BN6PR05CA0028.namprd05.prod.outlook.com (10.174.92.169) To
	CY4PR01MB2679.prod.exchangelabs.com (10.172.135.13)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f6aa243f-ced7-4e36-e1ac-08d48914cd49
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:CY4PR01MB2679; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	3:sSHClvNq2xiBL7+y04hD7YS9Z3B5aHrB+d/6K5aBonOQ5Ot40CKBFE00mlF1X3aPGHWcK2ZpuHifYwBMbsKluA+6t7jSgjmJ/GnHgEAbUdDek/DU9nvfHthMB9Jm1d8OlOh/30TtYhggHzb3o/cfvPoWA05Zi2vTn4q0mdkgpqn8tWvVmP4P7QXoKAOhcJ4lk4rBabbOKrSDaa/o4t54EUoCgLTNxMZFVK05oKkK2vji18G3MrNYVwmHfLO5vobBW2BsZTabjFw0mQVP7CHsH2GQldOBBejUPmNG2+9DaF+mS/Y7U4uz+5R9UYnJdXUEGVgs9kCl03VVNnGNy5ljzg==;
	25:GqcnPZgeqlmAIKLqZyfPKim1JV6/WkIttALEJFCWdiDhISvMm8Juid2n8afCNTWp0+6v9DpPAe6ej49jOynxkrF/sN/HKERVbpLIuuNcZdZOFVrzDgl52nZeLhg7QQ+w46WU2vTSUvTn9zb9dL6AunIaJReoWQ3TX8yaoDhtW4s2nuQcAulxSdwDS2XHJrE9uX1prx9UtjvxUD0UGPY59KngZ5SfvTHbg7hcH/1t7g1C4dga9/+w88utAF07+GgLToof7tOjEIuVqazVjRUCKBfu3SNw3ZhxowAwyy/xnrRG9gY9dMFImZocsetLQhDK/KxM25/+xqeylMT5xNtOpVV/paofQZlWcxDq8BFzksUSXhcFaqyBvSoWK7EF+jDLUgIe11O0QKS4v1JI10GIRtRrPojPtEEebYXnBY0OJ9owWs2AkAzAlSBZ9IgCze7MgMnrBMtIj0fqD0nnbrWnlA==
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	31:eUeo49xtt9li4SmCB+Ij05JgHHqinhyhbUyczAoxooDdtMLYQTkLFm/HFm2AeZCc8q9zNoDufFYiogkTLfjsFN8+qrWy0AhdzAYsCR38ETiAms+EM2z54T96WewREFwU3/fHe1nVr/2hbkuMdNs3IczSunzKCkE6TO4Z/GWUCTuhWxv6BiM6e/DNCWChdiWlX97GfXCa6icrUGn0BYQukd70nqC98CETh1NTP6LeGoo=;
	20:spcgYQI3XNfIOjrHhXGOEbN4OWVsHVJFlh97QrndDdpPqVZm9zr7SncFu9yJWTOSoCeYPjuw6QXD+Gi8k1Gg/WUc25K6MVIBOHa+SKGl28IHkK8g03TqOOE24SFdnOKYXYBZVAwG241t4Ag1ffwNPGMcNgGoYE8vjVP8pUXbDP6XpWn9YQ7eByo6+0yJ+tfCeVztNhgT61kb93BVw/iY/vhFrjdFkkjYbe3q4t81WZb9b6oj78lAMmRNhJ988CzoklG+HJ34Na6jJ+hzJ5WLk/p3ROx39nzlSbEhxmKKT0HZSPGO57JLf+zrTkY0H11ORYEF1haOTN1YA09vRoG1/w==
X-Microsoft-Antispam-PRVS: <CY4PR01MB267929D618D383D95B49CFD4AB1D0@CY4PR01MB2679.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(6041248)(20161123560025)(20161123555025)(20161123564025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(6072148);
	SRVR:CY4PR01MB2679; BCL:0; PCL:0; RULEID:; SRVR:CY4PR01MB2679; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	4:YqX6jujP8v6dIylC21DnuTC2nLNullVFPPXc9rUvS7qvhT4q1fIZOGqu8xU/yHko4hJkuHYagxapfi9NjF6aeYlB8d+7ajAcr8dGB+U32QuSA9wx6ibkP6OSht8jcO3bQSDp2WryRum8f3UB//WjLXRac8kmgNsfv7p9yrUvufr3MpjBlMVhBxSUERT0cwVw/welH/Cf/AammZgz96uxFpE4vd1HVYKrCaZ9/gVFtiGokFm1kyDt63eDpvLTnKcOzvwmbJ88njWa0AOBlidVoH0Tq4OFQVRrQCHR3NjQ6UUDA6B1Ry2yZ9RFvF8wDXUIBVNmuwyUy0z+rgaEjq4EORdZednYYC8mYiiWKbydt9ZIPZ2hyF/tJ/5fGUN2+k0FZVeIGUXfg3mKVjniYoyWD5sddFX/2qtrMJHCuCVxqgj1QiY6QkmM5J7fqfUSWweaIBN72+FsSt2Vo/cLrHujZ9emAaDRgbL83x0Lzrx65tCqZ42Cwxu/xBZNdfKZulKHobufHwbxHWGeL/0Z52PNOyFE5MY+PAhwJ6mv9Y5nQNpf6GyN3Y93Vs15qPlFcdl7n1yFoeLDx9pISrZf/aC0mpCdB177HXLBMzc3PY77m98OlGeFrfFIpGnXQrJ6Z3Teufx8ehWe/0oqSNuoPk+pqV0B6Axsau19fKvMImDoVyzxpL3IcirJU146CHWidHTJLgU36bq8cpfq5xdrC/3iGA==
X-Forefront-PRVS: 0285201563
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6009001)(39410400002)(39400400002)(39830400002)(39450400003)(48376002)(50466002)(6506006)(6486002)(4326008)(53936002)(110136004)(54906002)(2906002)(6512007)(107886003)(38730400002)(50986999)(3846002)(25786009)(6116002)(189998001)(86362001)(305945005)(7736002)(5003940100001)(81166006)(50226002)(36756003)(47776003)(66066001)(5660300001)(8676002)(42186005)(53416004)(6916009)(33646002)(2351001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR01MB2679;
	H:columbia.surround.io; FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY4PR01MB2679;
	23:XoMigs21JWcPkqaA+wQ6PFCeNBriZMhMKNqdPMbgB?=
	=?us-ascii?Q?/qQ8dCTjEFCyDdjCMLfcFBntc1doqlJHh4GwPdfkGK1TYqZCWq6ez2PR2rUu?=
	=?us-ascii?Q?jpUpQrCf38QY4OEOz57cYMX2wFuZbcgrYlURdtX4MiXTuRepwFSoiZ0T0/eI?=
	=?us-ascii?Q?mkmFosjzfBxbTSZrl4a2OJxaV4kUKu2VN6fGbyMBggqtRJBRAhJrQNeRJGM2?=
	=?us-ascii?Q?t8LtKOTXAzM4e5bMSHT2TF8zrAgj+C7qaYR8ylEeZq5dioddmp3dZC/06+Xv?=
	=?us-ascii?Q?dFlXw8uvmALGNw4D1KkeoTQ+9jBK3M9OQuAgP/RqFDR7rWwN1rRbhAR3ivCl?=
	=?us-ascii?Q?7Ke2+hHWmDhvCycpNdxKMW7tkvC14WYK3k0HcLjDihflY7OotN4GF0CajFkz?=
	=?us-ascii?Q?8p85y44bJdpHoLL3F22fqdavRVRbqwTWN0UgLChVxZSkeSKwaOleoekeSG/f?=
	=?us-ascii?Q?27CxVCUF879zJuKrLvi50yb/4nbxOmoJRvFPiB/mz/W6WvJGvvyutIiEHJJu?=
	=?us-ascii?Q?FXSU/EPPzEFVZxisQTRgSGEQ49VHl5poClApT6fIRve/IRk770Mw7NU6pPeo?=
	=?us-ascii?Q?A7BVoDGxRmdGleu2ubz+rPIa2Wu3Tdb91LJPIq7tJ5su9fF+eBg8m92HzCPo?=
	=?us-ascii?Q?DXXnM4JQJd321YefeMq4CbcRy7CsaV4nA0RJDo0wVc7ApyXrQPKoE4Sy68Ru?=
	=?us-ascii?Q?mGkO0CDePWuiM70thzkjAokgIRrB3cUeeSu7eNbXok5lFiCCuQHBz15A3KMI?=
	=?us-ascii?Q?s1dcvBUtcOlGbkIDvKYxeekjfSmrzIOTaGVhsPg4a7nTDokej4c69upoyAuO?=
	=?us-ascii?Q?0zolSy1Q8Fxd0F+egE7VCa6+8eyEu8QGKrxXt43CL/e77GH7aIp4mEa4Kjtx?=
	=?us-ascii?Q?SFZBjIk4j485td9lT4+ISp/RCRsWGUXHnrHdMaoT3qscY+nrt2SqfU2mFoS3?=
	=?us-ascii?Q?2sOEXV6Avtpy6nKvBHwod86ZtScosj1gtSUG6R7QOuBmGfn6jCdIoKsflP3o?=
	=?us-ascii?Q?Qc=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	6:WVXUVh3lm4wwbKaCVZOmmseEB5Unxefv6LHVLFkDPHZeUdxQ0dvvdIQP61K8JH3UfvXKjRLSesge8tTlEeo0tb9Z+8cK71W32or65NRNlCZj4sng3j5apzbhqcbEXgtbMKvoQQl1WUnTx425IiGA0RgXSdMrF2lrARk3LWeL5R9x2wfc9oZNI2A+KHkirmRtlfOwSw0vKcW4ViJYmbj4GqVb0dXjOSt/BEH9J6kP2uJh9sY//3KtRBzzXe1AY8jWvjGiP+dc0Ksn77M9ca3aEwP7t9SXypS3Kne2V73w90U+rfQqA9cO65EF0PAhuCdwNgDGBhxiqMOC+P7Q+OLPlDuONK+lKGP+B6S7i0+xNffnLqhPaBIK3h1u8PlZZbxhXKReCwwzIns35tLrKGxiY2Rp+BWiBY0/PThKmRzOwG3GqqDgovdrFXT3hwy3cjWSG41eFHtbsES9INt86TSkaOU9xKNhEr2h5/8yuz2x0HG7pXni+7hlw0Jb6hBg1POhthMLiMSXV3vx/KfR5+L6Qg==;
	5:om6ciGUPbql+JmxDZ81a/b/HlDeZ3fijDtcBQgDv22q/e40i82nyr6f1bJ4g+zeQSg9wHhwV8J9KnGmxpPmDd82p1qi8+rybMr8FvFk9u89MhpGuOqcrnddSgInHzgmIQ/PskLPUrgnp4nJ4UZ7Vsg==;
	24:Hbitps+vDvrs5tl9dGLGbbbJ6xYp4947H6ZDK7uRUHCgvDjZCRlQKuElq0oKc1iW2CtiZ7dMGfB0yHjPu6DWcTtyzhekS9Ow89481tQgpLM=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2679;
	7:4NMmZblLso7KiYRrhkxsrF7ICy4eKfowoTeN3h0m8RIyXjf+eKTxFcPQSCv11Y5+KWtsttjPZMphO940UIsVT7ggY0wr1jZHBoTUgS2JHZEvQ4ZKiPWM5uuZy2Qq0nHvTZkgwyKugvd881/8z1EAhmXX72nUrAH98kVrqOhoLgzjhdDXTN4mmFYw7bKfnwE6k8IRYgbN9xTCRcDBGnHeEc/0Qt6MjRlnL4+HiWqq2VlOejXB66dvhLM4GrBSKZ5WyAFIZdH9DoqoePEmT12eH8ATgxTbP9fmQxTYFJD2D955bF4E3w07eb2OcabA0EPj6e5SbrkgVf930K8O3v9Fcg==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2017 00:16:19.5719 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2679
Subject: [PATCH] qemuboot.conf: make cpus match built artifacts
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
X-List-Received-Date: Sat, 22 Apr 2017 01:48:37 -0000
Content-Type: text/plain

Currently, the qemu CPUs for are specified as generic, but the built
artifacts are not. For example, we build x86-64 artifacts targeting
core2duo but run them in qemu with generic qemu/kvm CPUs. This causes
some packages that take advantage of the host architecture to crash
because they try to use CPU features not advertised by qemu. As an
example, Qt uses ssse3. When artifacts linked against Qt and built
targeting core2duo attempt to run on a generic qemu/kvm CPU, we get
the following crash:

Incompatible processor. This Qt build requires the following features:
     ssse3

We could fix this by making packages like Qt not take advantage of CPU
features. However, we will probably keep facing similar issues over
time, so it's better to resolve them in a more enduring way.

Fix this by making the qemu -cpu arguments match the built artifacts.

Signed-off-by: Martin Kelly <mkelly@xevo.com>
---
 meta/conf/machine/include/qemuboot-x86.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/conf/machine/include/qemuboot-x86.inc b/meta/conf/machine/include/qemuboot-x86.inc
index 06ac983..acd03a1 100644
--- a/meta/conf/machine/include/qemuboot-x86.inc
+++ b/meta/conf/machine/include/qemuboot-x86.inc
@@ -1,12 +1,12 @@
 # For runqemu
 IMAGE_CLASSES += "qemuboot"
 QB_SYSTEM_NAME_x86 = "qemu-system-i386"
-QB_CPU_x86 = "-cpu qemu32"
-QB_CPU_KVM_x86 = "-cpu kvm32"
+QB_CPU_x86 = "-cpu pentium2"
+QB_CPU_KVM_x86 = "-cpu pentium2"
 
 QB_SYSTEM_NAME_x86-64 = "qemu-system-x86_64"
 QB_CPU_x86-64 = "-cpu core2duo"
-QB_CPU_KVM_x86-64 = "-cpu kvm64"
+QB_CPU_KVM_x86-64 = "-cpu core2duo"
 
 QB_AUDIO_DRV = "alsa"
 QB_AUDIO_OPT = "-soundhw ac97,es1370"
-- 
2.7.4


