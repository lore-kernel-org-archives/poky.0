Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.59])
 by mx.groups.io with SMTP id smtpd.web12.20326.1604528315543210513
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 14:18:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=D4lW8IzK;
 spf=pass (domain: windriver.com, ip: 40.107.237.59, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=brdAZQiccwmWzgRPI/oKy+dnUpKmrv+lbS5QuC6jw5dMu8t7RxX617MaIHupqPFIPxjXxCEipDJdQFnyBHt/nKFITeaQGaY8ZiN+IVHfUrxwsX0sxPEhQ3o5MDeClvGMISPizCK35qTRz9mmPN0KGhTl3ymGknZCzFBzMab0dejh0TtBqCOufObFbBRSUanb95e1+GGvVD/eFNGYnyw1D0aZKtON7vWUEp+i2np2lrsvysQ5GL4InvewDQH+0fgwXuMeoJ96TZbHMXY6m5sPXMu5GF9Pqa8ZK97j632vrdml/UiaJF4fv2OR5lc4jGKZrbyewiOmmyKF0ZftAwRmjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q2XaAqmIRS1lE0SgFKJN7rWAKFaJ4xTf31b8GkhjzD4=;
 b=eRnyNb9qLfiOIQA5mNKpkGS2FwS/177xjheAkj5T88bGaIfHxuikHIUzMMuco0Wa2WpjC/RblW0Wo6XWKSLiptqqzmlhJN7gC4vMLwxBJC9W6ScEodpIjN6u/eSm8VH6jdGVFSh3a4GJ4clBA0whyggebtCuteW8GP1J26lqzZyXR0IUQyDDdIfC6D0DlVHNO3N0ZaiNERh7zpIzmIWHzg66Y9H5Fh1xoggWvBKR1D8tBiUoT/ReVz7eRXWCCjUTA8doKGquphaxQ/pjHVUyUaG8AHAjUIJpn77kaKf9MsohOet1ATR2pFVh7VhpMNeUhE3Ce9opkP5tKGyg21PMwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q2XaAqmIRS1lE0SgFKJN7rWAKFaJ4xTf31b8GkhjzD4=;
 b=D4lW8IzKTjNqNE/LHrvyyXj1Uc1e+VTFsALB/YBq5yrBMEMOw+0n/mPRzjLJIw/EoN8NtyvGkFwoN6kf1tT2UZhXq+P8T2ozhU4woFjTx91lmJIE4L9yG2baBAB50HkCO1NnBAJdX2uG49qGwi2kbsovn3JtJEV03LBg+lrce28=
Authentication-Results: meraki.com; dkim=none (message not signed)
 header.d=none;meraki.com; dmarc=none action=none header.from=windriver.com;
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18) by BN6PR11MB0018.namprd11.prod.outlook.com
 (2603:10b6:405:68::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.29; Wed, 4 Nov
 2020 22:18:26 +0000
Received: from BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::1105:8ad7:b702:a12f]) by BN6PR1101MB2276.namprd11.prod.outlook.com
 ([fe80::1105:8ad7:b702:a12f%11]) with mapi id 15.20.3499.032; Wed, 4 Nov 2020
 22:18:26 +0000
Subject: Re: [poky] [PULL][PATCH 1/1] package.bbclass: fix image_debugfs symlinks
To: william.hauser@meraki.net, poky@lists.yoctoproject.org
Cc: William Hauser <whauser@meraki.com>,
 William Hauser <william.hauser@meraki.com>
References: <cover.1602083275.git.whauser@meraki.com>
 <d29d662a45f8a5e845211c59eac3cdbcc779f1fe.1602083275.git.whauser@meraki.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <6dcef0da-bce4-3a5e-6fe4-f666a3167003@windriver.com>
Date: Wed, 4 Nov 2020 17:18:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <d29d662a45f8a5e845211c59eac3cdbcc779f1fe.1602083275.git.whauser@meraki.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY3PR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:217::34) To BN6PR1101MB2276.namprd11.prod.outlook.com
 (2603:10b6:405:4e::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY3PR04CA0029.namprd04.prod.outlook.com (2603:10b6:a03:217::34) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend Transport; Wed, 4 Nov 2020 22:18:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 815f9161-424e-4e5d-a4f6-08d8810f8cca
X-MS-TrafficTypeDiagnostic: BN6PR11MB0018:
X-Microsoft-Antispam-PRVS: 
	<BN6PR11MB0018EA6D2EA5292EE963C862F8EF0@BN6PR11MB0018.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lLnmATf88o3XgoSxmaShwNecd87L624yDGCMfeaCgt3MftxiisOOx6m2XzYaBwxNy5SpllERD7in7TJZMvD3o6VTmkPv5y6Y7O2fq+I52o7y0UrVWWrdcTaqf9q7EtAps3JzMs8tKHSqwtXp2wPw+2qmBQyp/Pua3qvTeBj7q5WcgDNDu/7go+Lg+CeXtB2ZjD/uOUf49bMoJgNkB9a/gFWKeC7e5Ke2CPzdC3ChGvuh/vQvTiNvQTVyPWjxCckSvDUAq5CnGMlf/H/3MSq2gPFaslwz+EGZCtQ6wvXzh2jXQAk/EJH1dkQDnfcIW7b0gO1qb0/QI7mo1lv2hc4UJP1bqsHFcWY9ysvtfQjP4xYxAy8riLB/sanb7tUIZmogl7C/UZND1xzWK8KR8ck2HhW2W3o9MQ23n70Qrk8191IKKxLkFBmarfZC3MCEBnNPZE7+Mu2zFRW5gpEsnGGGqA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(376002)(136003)(396003)(39850400004)(6486002)(966005)(8936002)(8676002)(66946007)(33964004)(316002)(16526019)(478600001)(186003)(956004)(6666004)(2616005)(5660300002)(66476007)(66556008)(52116002)(54906003)(166002)(36756003)(86362001)(16576012)(26005)(31686004)(4326008)(53546011)(31696002)(83380400001)(2906002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	qZOKNV7bB+p1rQxMMv2eaxQhE22BhO2k/z6h+H9zE9RJ9KvGTW6kx8ANEzTViw1XDt8h/SLi1ZFemsn5paHkvKSRhkeIrNdBgZiQej20tZWOzOYidIGgMCQpYnllt3f49CoTIUJdnB8jTG3ne9WJNdVC+6fH8VInGF13kXtuJGkPdSHvMO0EKh/+mjGS9HzVpW0obsobZcUIx11ZKref2lCyEpcLMUi8pYzc/vqhcD0jYcRbAuyXhxICWpi2UkSS385Wgc/K/BBTKEDbHCf6O+Nt8gITkNQRs055TOef5P2/CPfVPjobRLxGCUCX1AWu0GDJaV2kLDc3MojKQpX8CKETQman/Amn7gATbYrPeBcSjVXDtvEORuTsBhCiGN4eOFy/TSRGjyJwypzEkIC1Fnz1zYwKL41sq7FYli++rZpuX2+WxaoZTdJF2uPnX8lrAjIYUz/1EG3coAAHwfiT8aeqf4QFm/8Fg+a0JtRoXdnWGu/0BGhLkCJ8pHDRoauRp2ux7djieQkpZxkxknuMbmn7ONQx0un7BbFn4sauTPP4HePjAUA6I7ddTu8AcFiY3UggCiaIieNKYT7YMKlwdzDAIiZUPRswLwohgBO7duQDnfKNe0Q0igB33vP23vbbAcCAWBPVQCHP0O2D0y/HYw==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 815f9161-424e-4e5d-a4f6-08d8810f8cca
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 22:18:26.1497
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yucplP158RKFz2fJ8BV24hyJhAK2RCMZT0iCZk3CvKpmMU4oFbU6t5zT+woNQXPnLs1x1unQlCcyZxepJsk5aVYCw2xTMrCHzy70dbEnoQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0018
Content-Type: multipart/alternative;
 boundary="------------301246AD8A8CBBE6FC1DB165"
Content-Language: en-CA

--------------301246AD8A8CBBE6FC1DB165
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2020-10-08 12:59 p.m., William Hauser via lists.yoctoproject.org wrote:
> The comment in this code indicates that the code is meant to ensure symlinks
> are only copied to the debugfs if their target has already been copied, but
> instead checks for the existence of the symlink that has yet to be created.
> As a result this check always fails.
>
> This check is safe to get rid of since we will only attempt to copy a
> symlink to the debugfs if it's original target exists and is an ELF. It
> is, however, still possible for a dead symlink to end up in the debugfs
> if its original target was stripped.
>
> Signed-off-by: William Hauser <william.hauser@meraki.com>
> ---
>   meta/classes/package.bbclass | 8 --------
>   1 file changed, 8 deletions(-)
>
> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
> index e6236c0bb2..47f3df2e13 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -1258,14 +1258,6 @@ python split_and_strip_files () {
>               src = file[len(dvar):]
>               dest = debuglibdir + os.path.dirname(src) + debugdir + "/" + os.path.basename(src) + debugappend
>               fpath = dvar + dest
> -            # Skip it if the target doesn't exist
> -            try:
> -                s = os.stat(fpath)
> -            except OSError as e:
> -                (err, strerror) = e.args
> -                if err != errno.ENOENT:
> -                    raise
> -                continue
>   
>               ltarget = symlinks[file]
>               lpath = os.path.dirname(ltarget)


Hi William,

I think this patch/email got lost because it was sent to the wrong list and
we've been in the last stretch of the gatesgarth release. Could you please
re-send to oe-core if it wasn't merged?

See the README.poky below.

Thanks,

../Randy

Contribution Guidelines
=======================

A guide to submitting patches to OpenEmbedded is available at:

http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

There is good documentation on how to write/format patches at:

https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines


Where to Send Patches
=====================

As Poky is an integration repository (built using a tool called 
combo-layer),
patches against the various components should be sent to their respective
upstreams:

bitbake:
     Git repository: http://git.openembedded.org/bitbake/
     Mailing list: bitbake-devel@lists.openembedded.org

documentation:
     Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
     Mailing list: docs@lists.yoctoproject.org

meta-poky, meta-yocto-bsp:
     Git repository: 
http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
     Mailing list: poky@lists.yoctoproject.org

Everything else should be sent to the OpenEmbedded Core mailing list.  If in
doubt, check the oe-core git repository for the content you intend to 
modify.
Before sending, be sure the patches apply cleanly to the current oe-core git
repository.

     Git repository: http://git.openembedded.org/openembedded-core/
     Mailing list: openembedded-core@lists.openembedded.org

Note: The scripts directory should be treated with extra care as it is a 
mix of
oe-core and poky-specific files from meta-poky.

>
> 
>

-- 
# Randy MacLeod
# Wind River Linux


--------------301246AD8A8CBBE6FC1DB165
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-10-08 12:59 p.m., William
      Hauser via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:d29d662a45f8a5e845211c59eac3cdbcc779f1fe.1602083275.git.whauser@meraki.com">
      <pre class="moz-quote-pre" wrap="">The comment in this code indicates that the code is meant to ensure symlinks
are only copied to the debugfs if their target has already been copied, but
instead checks for the existence of the symlink that has yet to be created.
As a result this check always fails.

This check is safe to get rid of since we will only attempt to copy a
symlink to the debugfs if it's original target exists and is an ELF. It
is, however, still possible for a dead symlink to end up in the debugfs
if its original target was stripped.

Signed-off-by: William Hauser <a class="moz-txt-link-rfc2396E" href="mailto:william.hauser@meraki.com">&lt;william.hauser@meraki.com&gt;</a>
---
 meta/classes/package.bbclass | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index e6236c0bb2..47f3df2e13 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1258,14 +1258,6 @@ python split_and_strip_files () {
             src = file[len(dvar):]
             dest = debuglibdir + os.path.dirname(src) + debugdir + &quot;/&quot; + os.path.basename(src) + debugappend
             fpath = dvar + dest
-            # Skip it if the target doesn't exist
-            try:
-                s = os.stat(fpath)
-            except OSError as e:
-                (err, strerror) = e.args
-                if err != errno.ENOENT:
-                    raise
-                continue
 
             ltarget = symlinks[file]
             lpath = os.path.dirname(ltarget)</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Hi William,</p>
    <p>I think this patch/email got lost because it was sent to the
      wrong list and<br>
      we've been in the last stretch of the gatesgarth release. Could
      you please<br>
      re-send to oe-core if it wasn't merged?</p>
    <p>See the README.poky below.</p>
    <p>Thanks,<br>
    </p>
    <p>../Randy<br>
    </p>
    <p>Contribution Guidelines<br>
      =======================<br>
      <br>
      A guide to submitting patches to OpenEmbedded is available at:<br>
      <br>
<a class="moz-txt-link-freetext" href="http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a><br>
      <br>
      There is good documentation on how to write/format patches at:<br>
      <br>
      <a class="moz-txt-link-freetext" href="https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines">https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines</a><br>
      <br>
      <br>
      Where to Send Patches<br>
      =====================<br>
      <br>
      As Poky is an integration repository (built using a tool called
      combo-layer),<br>
      patches against the various components should be sent to their
      respective<br>
      upstreams:<br>
      <br>
      bitbake:<br>
      &nbsp;&nbsp;&nbsp; Git repository: <a class="moz-txt-link-freetext" href="http://git.openembedded.org/bitbake/">http://git.openembedded.org/bitbake/</a><br>
      &nbsp;&nbsp;&nbsp; Mailing list: <a class="moz-txt-link-abbreviated" href="mailto:bitbake-devel@lists.openembedded.org">bitbake-devel@lists.openembedded.org</a><br>
      <br>
      documentation:<br>
      &nbsp;&nbsp;&nbsp; Git repository:
      <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/</a><br>
      &nbsp;&nbsp;&nbsp; Mailing list: <a class="moz-txt-link-abbreviated" href="mailto:docs@lists.yoctoproject.org">docs@lists.yoctoproject.org</a><br>
      <br>
      meta-poky, meta-yocto-bsp:<br>
      &nbsp;&nbsp;&nbsp; Git repository:
      <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)">http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)</a><br>
      &nbsp;&nbsp;&nbsp; Mailing list: <a class="moz-txt-link-abbreviated" href="mailto:poky@lists.yoctoproject.org">poky@lists.yoctoproject.org</a><br>
      <br>
      Everything else should be sent to the OpenEmbedded Core mailing
      list.&nbsp; If in<br>
      doubt, check the oe-core git repository for the content you intend
      to modify.<br>
      Before sending, be sure the patches apply cleanly to the current
      oe-core git<br>
      repository.<br>
      <br>
      &nbsp;&nbsp;&nbsp; Git repository: <a class="moz-txt-link-freetext" href="http://git.openembedded.org/openembedded-core/">http://git.openembedded.org/openembedded-core/</a><br>
      &nbsp;&nbsp;&nbsp; Mailing list: <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a><br>
      <br>
      Note: The scripts directory should be treated with extra care as
      it is a mix of<br>
      oe-core and poky-specific files from meta-poky.<br>
      <br>
    </p>
    <blockquote type="cite" cite="mid:d29d662a45f8a5e845211c59eac3cdbcc779f1fe.1602083275.git.whauser@meraki.com">
      <pre class="moz-quote-pre" wrap="">
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------301246AD8A8CBBE6FC1DB165--
