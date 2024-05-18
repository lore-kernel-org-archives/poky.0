Return-Path: <maude007@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0DA9C04FFE
	for <webhook@archiver.kernel.org>; Sat, 18 May 2024 00:55:37 +0000 (UTC)
Subject: Best practice to share constants between C code and recipes
To: poky@lists.yoctoproject.org
From: maude007@protonmail.com
X-Originating-Location: =?UTF-8?B?TGEgQ291cm5ldXZlLCDDjmxlLWRlLUZyYW5jZSwgRlI=?= (77.131.168.34)
X-Originating-Platform: Windows Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 May 2024 17:55:30 -0700
Message-ID: <dn9q.1715993730040960434.wcch@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2RIueOMiw08F0prVO6qu"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 18 May 2024 00:55:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13356

--2RIueOMiw08F0prVO6qu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

A project uses GUIDs. They are constant string values. The values are used:
- in several recipes do_install() function to generate xml files
- in another recipe where the GUIDs are used in C code

What is the best practice to manage these constants so they are centralized=
 in a single file? Is it OK to put them in a bitbake .inc file, then genera=
te a C header file at build time? Are dependencies managed correctly in tha=
t case? Changing the .inc file should trigger rebuilding of the C code.

Thanks in advance for any suggestions
Best regards

--2RIueOMiw08F0prVO6qu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />A project uses GUIDs. They are constant string values. Th=
e values are used:<br />- in several recipes do_install() function to gener=
ate xml files<br />- in another recipe where the GUIDs are used in C code<b=
r /><br />What is the best practice to manage these constants so they are c=
entralized in a single file? Is it OK to put them in a bitbake .inc file, t=
hen generate a C header file at build time? Are dependencies managed correc=
tly in that case? Changing the .inc file should trigger rebuilding of the C=
 code.<br /><br />Thanks in advance for any suggestions<br />Best regards

--2RIueOMiw08F0prVO6qu--

