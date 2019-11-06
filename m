Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F959E00C46; Wed,  6 Nov 2019 15:35:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 492F2E00ADD
	for <poky@yoctoproject.org>; Wed,  6 Nov 2019 15:35:25 -0800 (PST)
Received: by mail-il1-f180.google.com with SMTP id z10so77363ilo.8
	for <poky@yoctoproject.org>; Wed, 06 Nov 2019 15:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:mime-version:thread-index:date:message-id:subject:to;
	bh=RZ9KncYQPDYG9HWjypvV8uXXFcTpxgfys/abW/KLkkE=;
	b=Yj3mtAICWuTKYva65kimCxYsvUlGHQAYpx2q84hkXRQmf+DCy65xYZNK4Ag+0bpt/Q
	kgmX9vXQ6SfBC7qZ9Ondx1PrSTQpMaJQ+aGpK+62X25q3TWZ+/7TDPB7nIiHcImYzKhQ
	ZEI4dwSy88inL6BEG7LhtviOSZtn8bSMY4/WM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to;
	bh=RZ9KncYQPDYG9HWjypvV8uXXFcTpxgfys/abW/KLkkE=;
	b=FFi4OTUfrNdOmX4C5FqIRHeu/dP4ahpcL1m3yh0xuasH+s/UNhU+Jh2nsiMA2+qPsY
	FDFgQQ6VwRiN/4wx30jrVdj9kDR8NixoeFcYm8FlFWYkREZPYp8+1SuFxNH2LbdnLacF
	gj6O+7Oo41672sQ7xx6wG5izhsYbUVJuNdGluhG+vGV63YQrnIdbx6dhosqXAo9S0426
	8jURCEMlWi910GsH8HDxfSsBFFFurkjs2muJYVy3P28yDF0osQULVmRv6AII43zrrPsC
	v+RcWB42LVpmEQlyeO1/s0CDFateenUOj12SVX4lzodgeLBvjjTUu3ew+gOxh2a+oUOT
	qdgA==
X-Gm-Message-State: APjAAAWUMIABeHc2eAR3Xykph1mCF8F2UJojlUcRTbQy7zUJWBQORsio
	8l4jTElNVUUIGrKaYV2MJuwdNAiRMqdniIutsMTN6BaA
X-Google-Smtp-Source: APXvYqx7T8Koz5jkq3aWmL1paqjZ7dpPm94QsgdhBX5SzhLao1op3qhelXb8JnmlIFGWZgWFr1er2Er59j9QK7nIFtg=
X-Received: by 2002:a92:40d9:: with SMTP id d86mr467485ill.303.1573083324412; 
	Wed, 06 Nov 2019 15:35:24 -0800 (PST)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdWU9V06PvD9dqksSQ6zdsMlA9mcRg==
Date: Wed, 6 Nov 2019 15:35:22 -0800
Message-ID: <fe3dfa14916a01f24b0cd59065c18469@mail.gmail.com>
To: poky@yoctoproject.org
Subject: sql error on recipes using multiple git repos
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
X-List-Received-Date: Wed, 06 Nov 2019 23:35:26 -0000
X-Groupsio-MsgNum: 11810
Content-Type: multipart/mixed; boundary="000000000000c155870596b60004"

--000000000000c155870596b60004
Content-Type: text/plain; charset="UTF-8"

Hi,

As of warrior release (and zeus) I'm encountering an SQL error (attached)
on a bunch of recipes that use SRCREV_FORMAT and multiple git repos. The
simplified recipes are below. On the build server it happens most of the
time, on my local 32 core machine I rarely see it. The error can occur on
any version of the recipe. I can't tell what's wrong. It looks like a bug.


nitro.inc:

BRCM_NXT-NVM_BRANCH ?= "bcm/master"
BRCM_NXT-NVM_SRCREV ?= "${AUTOREV}"
SRC_URI = "
git://svcccxswgit@git-ccxsw.rtp.broadcom.com/brcm/ctrl/nxt-utils.git;proto
col=ssh;branch=${BRCM_NXT-NVM_BRANCH};nobranch=0;name=nxt-nvm"
SRCREV_nxt-nvm = "${BRCM_NXT-NVM_SRCREV}"

BRCM_NXT-UTILS_BRANCH ?= "bcm/master"
BRCM_NXT-UTILS_SRCREV ?= "${AUTOREV}"
SRC_URI +=
"git://svcccxswgit@git-ccxsw.rtp.broadcom.com/brcm/ctrl/nxt-utils.git;prot
ocol=ssh;branch=${BRCM_NXT-UTILS_BRANCH};nobranch=0;destsuffix=git/nxt-uti
ls;name=nxt-utils"
SRCREV_nxt-utils = "${BRCM_NXT-UTILS_SRCREV}"

SRCREV_FORMAT = "nxt-nvm_nxt-utils"


brcm-nitro.bb:

require nitro.inc
PV = "git${SRCPV}"
BRCM_NXT-RELEASE_BRANCH ?= "int_nxt"
BRCM_NXT-RELEASE_SRCREV ?= "${AUTOREV}"
SRC_URI
+="git://svcccxswgit@git-ccxsw.rtp.broadcom.com/brcm/ctrl/nxt-release.git;
protocol=ssh;branch=${BRCM_NXT-RELEASE_BRANCH};nobranch=0;destsuffix=git/p
rebuilts/nxt-release;name=nxt-release"
SRCREV_FORMAT_append = "_nxt-release"
SRCREV_nxt-release = "${BRCM_NXT-RELEASE_SRCREV}"


brcm-nitro_nxtrelease214.bb:

require nitro.inc
PV = "nxtrelease214+git${SRCPV}"
BRCM_NXT-RELEASE-214_BRANCH ?= "rel_nxt_214"
BRCM_NXT-RELEASE-214_SRCREV ?= "${AUTOREV}"
SRC_URI
+="git://svcccxswgit@git-ccxsw.rtp.broadcom.com/brcm/ctrl/nxt-release-214.
git;protocol=ssh;branch=${BRCM_NXT-RELEASE-214_BRANCH};nobranch=0;destsuff
ix=git/prebuilts/nxt-release;name=nxt-release-214"
SRCREV_FORMAT_append = "_nxt-release-214"
SRCREV_nxt-release-214 = "${BRCM_NXT-RELEASE-214_SRCREV}"


brcm-nitro_nxtrelease216.bb:

require brcm-nitro.inc
PV = "nxtrelease216+git${SRCPV}"
BRCM_NXT-RELEASE-216_BRANCH ?= "int_nxt"
BRCM_NXT-RELEASE-216_SRCREV ?= "${AUTOREV}"
SRC_URI
+="git://svcccxswgit@git-ccxsw.rtp.broadcom.com/brcm/ctrl/nxt-release-216.
git;protocol=ssh;branch=${BRCM_NXT-RELEASE-216_BRANCH};nobranch=0;destsuff
ix=git/prebuilts/nxt-release;name=nxt-release-216"
SRCREV_FORMAT_append = "_nxt-release-216"
SRCREV_nxt-release-216 = "${BRCM_NXT-RELEASE-216_SRCREV}"


local.conf:
BRCM_NXT-RELEASE-216_BRANCH = "bcm/stable"
PREFERRED_VERSION_brcm-nitro = "nxtrelease216%"

Thanks,
Jon

--000000000000c155870596b60004
Content-Type: text/plain; charset="US-ASCII"; name="parse-error.txt"
Content-Disposition: attachment; filename="parse-error.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: 62e5b5e715a2e245_0.1

UGFyc2luZyByZWNpcGVzLi4uRVJST1I6IEV4cGFuc2lvbkVycm9yIGR1cmluZyBwYXJzaW5nIC90
bXAveW9jdG9fYnVpbGRzLzEyMzMzNzA3X254cy1uZXh0X3N0aW5ncmF5LWJjbTk1ODc0MmsvcG9r
eS9idWlsZC8uLi9tZXRhLWJyY20vbWV0YS1kYXRhY2VudGVyL3JlY2lwZXMtYnNwL25pdHJvL2Jy
Y20tbml0cm8uYmINClRyYWNlYmFjayAobW9zdCByZWNlbnQgY2FsbCBsYXN0KToNCiAgRmlsZSAi
L3RtcC95b2N0b19idWlsZHMvMTIzMzM3MDdfbnhzLW5leHRfc3RpbmdyYXktYmNtOTU4NzQyay9w
b2t5L2JpdGJha2UvbGliL2JiL2ZldGNoMi9fX2luaXRfXy5weSIsIGxpbmUgMTE2NywgaW4gc3Jj
cmV2X2ludGVybmFsX2hlbHBlcih1ZD08YmIuZmV0Y2gyLkZldGNoRGF0YSBvYmplY3QgYXQgMHg3
ZmQ2M2Y1Yzg0Mzg+LCBkPTxiYi5kYXRhX3NtYXJ0LkRhdGFTbWFydCBvYmplY3QgYXQgMHg3ZmQ2
NDQwMzA5ZTg+LCBuYW1lPSdueHQtbnZtJyk6DQogICAgICAgICBpZiBzcmNyZXYgPT0gIkFVVE9J
TkMiOg0KICAgID4gICAgICAgIHNyY3JldiA9IHVkLm1ldGhvZC5sYXRlc3RfcmV2aXNpb24odWQs
IGQsIG5hbWUpDQoNCiAgRmlsZSAiL3RtcC95b2N0b19idWlsZHMvMTIzMzM3MDdfbnhzLW5leHRf
c3RpbmdyYXktYmNtOTU4NzQyay9wb2t5L2JpdGJha2UvbGliL2JiL2ZldGNoMi9fX2luaXRfXy5w
eSIsIGxpbmUgMTU2MiwgaW4gR2l0LmxhdGVzdF9yZXZpc2lvbih1ZD08YmIuZmV0Y2gyLkZldGNo
RGF0YSBvYmplY3QgYXQgMHg3ZmQ2M2Y1Yzg0Mzg+LCBkPTxiYi5kYXRhX3NtYXJ0LkRhdGFTbWFy
dCBvYmplY3QgYXQgMHg3ZmQ2NDQwMzA5ZTg+LCBuYW1lPSdueHQtbnZtJyk6DQogICAgICAgICAg
ICAgZXhjZXB0IEtleUVycm9yOg0KICAgID4gICAgICAgICAgICByZXZzW2tleV0gPSByZXYgPSBz
ZWxmLl9sYXRlc3RfcmV2aXNpb24odWQsIGQsIG5hbWUpDQogICAgICAgICAgICAgICAgIHJldHVy
biByZXYNCiAgRmlsZSAiL3RtcC95b2N0b19idWlsZHMvMTIzMzM3MDdfbnhzLW5leHRfc3Rpbmdy
YXktYmNtOTU4NzQyay9wb2t5L2JpdGJha2UvbGliL2JiL3BlcnNpc3RfZGF0YS5weSIsIGxpbmUg
NTAsIGluIFNRTFRhYmxlLndyYXBfZnVuYygqYXJncz0oJ2dpdDpnaXQtY2N4c3cucnRwLmJyb2Fk
Y29tLmNvbS5icmNtLmN0cmwubnh0LW52bS5naXRiY20vbWFzdGVyLWJyY20tbml0cm8nLCAnZWE0
MDY3OWE2YmUwM2NkZjdjYzNkZWY3YzdmZjBhOTI3ODI3NThmYicpLCAqKmt3YXJncz17fSk6DQog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRyeToNCiAgICA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiBmKHNlbGYsICphcmdzLCAqKmt3YXJncykNCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZXhjZXB0IHNxbGl0ZTMuT3BlcmF0aW9uYWxFcnJvciBhcyBleGM6DQog
IEZpbGUgIi90bXAveW9jdG9fYnVpbGRzLzEyMzMzNzA3X254cy1uZXh0X3N0aW5ncmF5LWJjbTk1
ODc0MmsvcG9reS9iaXRiYWtlL2xpYi9iYi9wZXJzaXN0X2RhdGEucHkiLCBsaW5lIDc5LCBpbiBT
UUxUYWJsZS53cmFwX2Z1bmMoKmFyZ3M9KCdnaXQ6Z2l0LWNjeHN3LnJ0cC5icm9hZGNvbS5jb20u
YnJjbS5jdHJsLm54dC1udm0uZ2l0YmNtL21hc3Rlci1icmNtLW5pdHJvJywgJ2VhNDA2NzlhNmJl
MDNjZGY3Y2MzZGVmN2M3ZmYwYTkyNzgyNzU4ZmInKSwgKiprd2FyZ3M9e30pOg0KICAgICAgICAg
ICAgICAgICAgICAgICAgIHdpdGggY29udGV4dGxpYi5jbG9zaW5nKHNlbGYuY29ubmVjdGlvbi5j
dXJzb3IoKSkgYXMgY3Vyc29yOg0KICAgID4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4g
ZihzZWxmLCBjdXJzb3IsICphcmdzLCAqKmt3YXJncykNCiAgICAgICAgICAgICAgICAgcmV0dXJu
IHdyYXBfZnVuYw0KICBGaWxlICIvdG1wL3lvY3RvX2J1aWxkcy8xMjMzMzcwN19ueHMtbmV4dF9z
dGluZ3JheS1iY205NTg3NDJrL3Bva3kvYml0YmFrZS9saWIvYmIvcGVyc2lzdF9kYXRhLnB5Iiwg
bGluZSAxODcsIGluIFNRTFRhYmxlLl9fc2V0aXRlbV9fKGN1cnNvcj08c3FsaXRlMy5DdXJzb3Ig
b2JqZWN0IGF0IDB4N2ZkNjQ1MTA2ZWEwPiwga2V5PSdnaXQ6Z2l0LWNjeHN3LnJ0cC5icm9hZGNv
bS5jb20uYnJjbS5jdHJsLm54dC1udm0uZ2l0YmNtL21hc3Rlci1icmNtLW5pdHJvJywgdmFsdWU9
J2VhNDA2NzlhNmJlMDNjZGY3Y2MzZGVmN2M3ZmYwYTkyNzgyNzU4ZmInKToNCiAgICAgICAgICAg
ICBlbHNlOg0KICAgID4gICAgICAgICAgICBjdXJzb3IuZXhlY3V0ZSgiSU5TRVJUIGludG8gJXMo
a2V5LCB2YWx1ZSkgdmFsdWVzICg/LCA/KTsiICUgc2VsZi50YWJsZSwgW2tleSwgdmFsdWVdKQ0K
DQpiYi5kYXRhX3NtYXJ0LkV4cGFuc2lvbkVycm9yOiBGYWlsdXJlIGV4cGFuZGluZyB2YXJpYWJs
ZSBTUkNQViwgZXhwcmVzc2lvbiB3YXMgJHtAYmIuZmV0Y2gyLmdldF9zcmNyZXYoZCl9IHdoaWNo
IHRyaWdnZXJlZCBleGNlcHRpb24gSW50ZWdyaXR5RXJyb3I6IFVOSVFVRSBjb25zdHJhaW50IGZh
aWxlZDogQkJfVVJJX0hFQURSRVZTLmtleQ0KDQoNClN1bW1hcnk6IFRoZXJlIHdhcyAxIEVSUk9S
IG1lc3NhZ2Ugc2hvd24sIHJldHVybmluZyBhIG5vbi16ZXJvIGV4aXQgY29kZS4NCnJjPTI1Ng==

--000000000000c155870596b60004--
