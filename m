Return-Path: <Tom.Hochstein@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2156DE00985; Wed, 25 Nov 2015 13:57:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2014 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Nov 2015 13:57:53 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0116.outbound.protection.outlook.com [157.56.110.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 543E3E007C9
	for <poky@yoctoproject.org>; Wed, 25 Nov 2015 13:57:53 -0800 (PST)
Received: from BLUPR03CA012.namprd03.prod.outlook.com (10.255.124.29) by
	BN3PR03MB1414.namprd03.prod.outlook.com (10.163.34.21) with Microsoft
	SMTP Server (TLS) id 15.1.331.20; Wed, 25 Nov 2015 21:24:16 +0000
Received: from BY2FFO11FD019.protection.gbl (10.255.124.4) by
	BLUPR03CA012.outlook.office365.com (10.255.124.29) with Microsoft SMTP
	Server (TLS) id 15.1.331.20 via Frontend Transport;
	Wed, 25 Nov 2015 21:24:15 +0000
Authentication-Results: spf=permerror (sender IP is 192.88.168.50)
	smtp.mailfrom=freescale.com; freescale.mail.onmicrosoft.com; dkim=none
	(message not signed) header.d=none; freescale.mail.onmicrosoft.com;
	dmarc=none action=none header.from=freescale.com;
Received-SPF: PermError (protection.outlook.com: domain of freescale.com used
	an invalid SPF mechanism)
Received: from tx30smr01.am.freescale.net (192.88.168.50) by
	BY2FFO11FD019.mail.protection.outlook.com (10.1.14.107) with Microsoft
	SMTP Server (TLS) id 15.1.331.11 via Frontend Transport;
	Wed, 25 Nov 2015 21:24:14 +0000
Received: from paisano.freescale.net (paisano.am.freescale.net [10.81.19.190])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	tAPLODB3013616; Wed, 25 Nov 2015 14:24:13 -0700
From: Tom Hochstein <tom.hochstein@freescale.com>
To: <poky@yoctoproject.org>
Date: Wed, 25 Nov 2015 15:23:56 -0600
Message-ID: <1448486636-31751-1-git-send-email-tom.hochstein@freescale.com>
X-Mailer: git-send-email 2.1.4
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BY2FFO11FD019;
	1:9gUNn+jGJQUdF0KMxdQL+Zj3nt4jK/OuM8QdHY4lyWi9easjqnKHLbPb2aCZWoDjwb3X44wf9FPiXPNu1Ae9QuO4EXCRkWDWdX1/bpZOect8m0XCPTM/qVv4SzXCgYjjOZP0WFpvG+LKXGMqrYy6U44Fx5DhzYnuVXSabi07k0nh3hRtZ33geznEB8KraeJ05Ns79k5RJA8RsGBjyHbJQKcaoJmI1VWZwIYaHC4AgvbqIywLAVQ7RBLPuT0ELl2LmUa1+n4uNTenclaOHCgI+Kr4QH02Uo65A3jBIPts3EEozwxeGI/GwvMMvbetg4kzinrnuFqd5sWC5PF8Mu9WaD2XJ4BaG/H3/bFADCAO8IYRcF8Yw0SP/l4fO+zIVNcnoaymjsmzsOATNzeyVuX95S5nyk+j+zeMocLyi/L4SXg=
X-Forefront-Antispam-Report: CIP:192.88.168.50; CTRY:US; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(2970300002)(448002)(189002)(199003)(19580395003)(586003)(36756003)(19580405001)(53416004)(48376002)(104016004)(5008740100001)(92566002)(97736004)(81156007)(2351001)(450100001)(1096002)(50986999)(189998001)(87936001)(33646002)(85326001)(4001430100002)(5003940100001)(47776003)(77096005)(229853001)(86362001)(106466001)(5001920100001)(107886002)(110136002)(5001960100002)(6806005)(50226001)(50466002)(1220700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR03MB1414;
	H:tx30smr01.am.freescale.net; FPR:; SPF:PermError;
	PTR:InfoDomainNonexistent; MX:3; A:1; LANG:en; 
MIME-Version: 1.0
X-Microsoft-Exchange-Diagnostics: 1; BN3PR03MB1414;
	2:QyiNKWuPiDuXQay8jBUU8/Mrsn38foqbNmAM959aRo1Zg261Tk9ttBL++s1yBPFdTL0G4fjYeE4fcXVXoATJGYaxZ8Q7C8MrpefqEVdKb4gnlSlIhJNgsJEBNS5X+3GG9Vot/of45Q0jQbTOQUjENQ==;
	3:Ub9IVREqWoXnRGHjUbqJ/Hph4f3vxnIe7ZSkeeL+TzZre3OdnFIZ0CJxlKeJ+ZzQflRKYjzl41HQPIh3N/KZ5EIc4wjoi8WNlrBMoa+0aGfworI6g3ksO7eN65267dWvH17p98aMy6uYh7i0qoDhvZ8+nM7NOxHRBKEK0tXl9VHBL4jUQ/QlQ4aH2y/Y/H3w/HtmrNRHIfUyNxFr3pbt0ffgZRW9rzCrOvH7qT+QlJc=;
	25:islcMiXU7pctXJtGke2pGttQI3XRXnH9cj2qLaqBnZ64Fq2BFsPfuT9o5d91T4A3LiyqT3zhy4nh7V+sdYxhT1RnmbQ2o0iF4NDRxJOr+EI72ozBWzcvU3lv99DShq2Ei2L5TDlyukuSLcwbup78wf5O2egU+F9hqBRYMgdyDrFeEnRDRNHESaMFI2tF7emVxrfWhdM+tFtkiG/3SxPG3dA9q1UUCR2zOg0Z0Fi0VqhxwhoCbNbj+MXgefhwDG49
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR03MB1414;
X-Microsoft-Exchange-Diagnostics: 1; BN3PR03MB1414;
	20:44Uy0phR8HwRdWI1x7oyTD4vTO00QxrB3pHZ7IWCRe0prYoXjjvwn9Q2eYJPyFyw1n8//uRsEKk9bz1Kanqb4RgRQLzBPsabIUH8nMRXPdpdeY9c+/aL2HPvYyn6/b0V3x/hCVKxOchKDCN4nnvwC8aw8uilUuj2ghbHgUdpx+3Bh5y/zSXVT0lMa1QIAYEVZ18phTUr2ulBUe+fUAS69An4kCYk1oqnctUcEQhpHK40GM5O83XifkVe6mlJV3NW3s2HadhNl0QXBAY7p27xeoCNbGDTgpeeLmk6mZt8OIPKxjvKzwlBdJB+ta3HwUYZBC58Brhl1v0QVlxntk8Qpld2L/AnKB86tWrFnnGoP+Y=;
	4:HoasJFil8Sb/a5KOgWhZ08ILQGL8DAGvxEaG8N9PkM57SvyHqBltr9r8r4XSkjLCK3M8XXIWtNRDP08M8pY/SdqMFowRRNPhgG6RlAsCxiWjK728AifzupzBrfp3SAxKeMT5Dyz+449P9zOliMpi34rvn7gNdV64/bb8lwYm+njFFU5zfAlaPBy7gI8stfgptVHZYwMmx/J32L0BWLkvC1W+T9AZb+pCvDaCpee/b0JIqRp8LHYQnrSGq6ZvxccH1atVTgw1Ti/7iKJ/ZHjKDtusVpjkQyo3fhG977b++5daPTiW+m9q8N2n33gkY5j9FSPMdun/9rUOi57uKzyQnzecjE3pdEzvJRHTo0ORbuw6A3/Zpn2xgtsMgXzu1zF3PVY6mnVUayrE7wL5NnOXNA9SGd08/6xD1WPyOGponGk=
X-Microsoft-Antispam-PRVS: <BN3PR03MB1414BE64A9C10B8D97156F1DE8050@BN3PR03MB1414.namprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(101931422205132);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(520078)(5005006)(10201501046)(3002001);
	SRVR:BN3PR03MB1414; BCL:0; PCL:0; RULEID:; SRVR:BN3PR03MB1414; 
X-Forefront-PRVS: 0771670921
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BN3PR03MB1414;
	23:DEpYI8XMCC4wTt2uKEY2sHBreJycjLzdFNFbYDwm8?=
	=?us-ascii?Q?GwYX3J5xQ+BYQjrbsfTC+fBtOQ0J6cZ98ikmPTlHnWi/kA8/0D1V/fV6cV6z?=
	=?us-ascii?Q?94ZH6OdHistJqXfRUbITHxU0u5kMdkLv9//UY64fVMzpImCVqVEaKVdwf0JC?=
	=?us-ascii?Q?cQlnfyqKL8tMEzqitLEqgZwAxyGGvHZ5OkeS20xMNBXQNd/8VP5+XmQ2Ar9F?=
	=?us-ascii?Q?nuxRbHapG8dvqxEuJWzP1vaZpCUyfHmtxiGmd+gO8QhNrpW+rBE42VYmxzEI?=
	=?us-ascii?Q?Xunar2n5BrVKet91qaSOy3bY9k04wPwe58Nmx4PmMgr9A95qrTftT5gik6Dz?=
	=?us-ascii?Q?5tzhWL90KkQGIY53P6adSehGNh34/dgC8EJRJguzUSl04PZsmFIpTdf8/gVb?=
	=?us-ascii?Q?p8FGj6d3xpMDGuFvBkos37/DtpwysTSOq683/RbZJoH7KgVfCaEGq0QooQ/V?=
	=?us-ascii?Q?yU1NPTphxlNfV6H2A2Pp9sHD5CZr8ZRihy1INh613YtcwWucIuf42V3BLSOY?=
	=?us-ascii?Q?t7qSknFwzfblCadpMp9j3DZrMhcJ96tfvk+VuaVXFjsveXsPEmq2DkQ6dLCu?=
	=?us-ascii?Q?H6pMc445QcRZtk2wxPcrl9NDkYnB1gOlW7KlNwssp6vFH316pVnUZnDviIJZ?=
	=?us-ascii?Q?OZPq0PwUAD+6+Wns4aa5BkaOHUQ3FaStbnCV3eIn+pft/c/AzDWwM80sX41a?=
	=?us-ascii?Q?9Z4HkbEdIDS49DuQ6BGfROMUL5sHQ0UhoTpA9n96cTlyeR/0aU1anWqId0jf?=
	=?us-ascii?Q?eHrSNbCW66BNYWQB/6NUMRjKtOXHrnDjUljpnpGfWRYByenWe48Q/1VC+Kfa?=
	=?us-ascii?Q?x3wsO4RSCcOagVWeBM+r0KEwn/ugbg64+/xzkEkq02jTos4OEfjkVKxtRtOl?=
	=?us-ascii?Q?pjTsyl07dElJ6pmcJjdPReO3FXTdmTudm8pL7wWhxKKmDWBxn+ZfKCkfzuj1?=
	=?us-ascii?Q?MHGMc+0r/1hunfz5OYxppHyGirkXlH0kKFM1nv+OmQlsqHx1iUHuoZqhPkcG?=
	=?us-ascii?Q?QtfwGQE6mTFdYM6WVbnHwgtaigUc5cx3pjMLbVB7ssV24EpWDSR/nyVFRIV3?=
	=?us-ascii?Q?/WJ12o=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN3PR03MB1414;
	5:YM07L4mq0SOeTKPZSOf0XaeBosHpupIKJhyWBzzKgLbP3XvAIUSJTO0BavIL6AAixgbRZxAXqWjpSpWXUYdKdEIccApiBBidTxwQEjInlaZD0QOt9Y7xmbhsFmvN+Q8JRQQKDokKxA8Ea91JEyL1wg==;
	24:3C5PejghK+Eci5mQAUUorVRE7jks7Mh6rkLm5gGvVvWd63AROR7OuT5b8CsTVa9uJbUgyk8lhwut4nlUdnQTTKR9k9OxZbYVXMke1/e7dHY=
X-OriginatorOrg: freescale.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2015 21:24:14.0746 (UTC)
X-MS-Exchange-CrossTenant-Id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=710a03f5-10f6-4d38-9ff4-a80b81da590d;
	Ip=[192.88.168.50]; Helo=[tx30smr01.am.freescale.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB1414
Cc: Prabhu Sundararaj <prabhu.sundararaj@freescale.com>
Subject: [PATCH] weston-init: Use weston-launch for XWayland
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
X-List-Received-Date: Wed, 25 Nov 2015 21:57:56 -0000
Content-Type: text/plain

From: Prabhu Sundararaj <prabhu.sundararaj@freescale.com>

When XWayland is configured, Weston must be started using the
weston-launch utility.

Signed-off-by: Tom Hochstein <tom.hochstein@freescale.com>
---
 meta/recipes-graphics/wayland/weston-init/init | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-graphics/wayland/weston-init/init b/meta/recipes-graphics/wayland/weston-init/init
index 2e938f4..1d4e577 100644
--- a/meta/recipes-graphics/wayland/weston-init/init
+++ b/meta/recipes-graphics/wayland/weston-init/init
@@ -38,7 +38,16 @@ case "$1" in
                 chmod 0700 $XDG_RUNTIME_DIR
         fi
 
-        openvt -s weston -- $OPTARGS
+        # If weston-launch exists, we're configured for XWayland.
+        if [ -f /usr/bin/weston-launch ]; then
+            echo "Starting Weston in XWayland"
+            export XDG_CONFIG_HOME=/etc
+            openvt -v -- weston-launch -- --log=/var/log/weston.log $OPTARGS
+        else
+            echo "Starting Weston"
+            openvt -s weston -- --log=/var/log/weston.log $OPTARGS
+            #grep console to look for gal2d-renderer.so. if no failed
+        fi
   ;;
 
   stop)
-- 
2.1.4


