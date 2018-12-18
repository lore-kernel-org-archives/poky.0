Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36160E00C5B; Tue, 18 Dec 2018 07:49:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
	[209.85.167.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 867C8E00C29;
	Tue, 18 Dec 2018 07:49:29 -0800 (PST)
Received: by mail-oi1-f196.google.com with SMTP id y23so2323601oia.4;
	Tue, 18 Dec 2018 07:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=G6DWl4Qo2xH9+Umv5NDTKPxu1yFatzkBLaXOq+36z9Q=;
	b=PdDU7ep1QoUluXqQawk/fNTD2oY1GS4F2o0Az8CraTzYEKNz8Den/Z74rZf4PESd+5
	Hq5HgR2zhcPNO9DyKkItc11suECpladvIwLHtJhIEwZLd8PXkWIpXAyt2/HKEYWOJuCq
	qJAFJxEzhS20KXi4Jg4c7y5dSFivFsOVjw6yldFuIeran0/MADgiqBInRe0uEppiETT3
	U2KnOvFycOHR985STLacR9bN2u0A+kVuGx81GL+bvPidJzmXBmy/v9YTU0Jg+L+HA5CL
	6yZ+M4VNG/w3LlJ2jYsrZR8oY8viQDBmgyXhFLP1Rux1Ig3yG9vsZ0/AlzMOvwzXDVl5
	I4cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=G6DWl4Qo2xH9+Umv5NDTKPxu1yFatzkBLaXOq+36z9Q=;
	b=W1BOGcz3d/AwvOjkbB6BnfU1HZbktk2qgtLAW6RrTrLW+yUdIuS7KAodSlaHfYKYeD
	BTTenEXuXodHOASUikv0j557qreObZ9UQW8GdYS3kv8lSy+bCqnP6vYroFu83NzIajoq
	uDTI/3I6mQpqzg46En0ZEOLZtdPMyxdwyNlH1xzgRk00mTaJlaAYiaVSADyPdZkJW3ie
	mKpQUiEvq1+romkRuMQmJFcHBuoQP2YElCJ3eoZtpa7CkqlrnQsYg9KycoIPHbIfxeBs
	3I8cIx8+4QBb3Hxd4+hyn4Q1Oa0QYXo15E+ADDRs5ROoCAaLhSwZM7NfBUTuwmCn6hnw
	MTIg==
X-Gm-Message-State: AA+aEWYrbNtqDaYbGD5l3yIM4XtOd2PwRVR44tC6ZNOonjhvPJ5Q4aVj
	ImIGbSvEE1LAXD8JxInyL6o1FJiNcHGKcVZU79q7kGoVD2Q=
X-Google-Smtp-Source: AFSGD/VxneMZIC4ppJEBt0gD5Y7kWVPy32X93MCXujl+cnrhFnqRkuWgG1f9YjhTLVinOM9GVAk+ZJyqUrktODlA/Hw=
X-Received: by 2002:aca:a11:: with SMTP id 17mr7678057oik.15.1545148168423;
	Tue, 18 Dec 2018 07:49:28 -0800 (PST)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Tue, 18 Dec 2018 16:49:17 +0100
Message-ID: <CAFsTbWcCmyvSxty2g2r_K6T45bE0h-pf35nYDfTeOaK+zy=n+Q@mail.gmail.com>
To: poky@yoctoproject.org, yocto-infrastructure@yoctoproject.org, 
	yocto-bsp@yoctoproject.org, yocto-builds@yoctoproject.org, 
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, meta-freescale@yoctoproject.org,
	meta-freescale-request@yoctoproject.org
Subject: Error fatal: manifest 'imx-4.9.123-2.3.0-8mm_ga.xml' not available in imx-linux-sumo
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
X-List-Received-Date: Tue, 18 Dec 2018 15:49:30 -0000
Content-Type: text/plain; charset="UTF-8"

Dear Yocto experts,

As all our yocto bsps for other hardware platforms support are
developed on yocto sumo version, (And I was able to do the build setup
for imx-linux-rocko ie., yocto rocko version), but now I need to do
for sumo version as this is followed and maintained unique for all our
hardware platfroms, In fact I see for imx-linux-sumo support also
exists, when I try to do this yocto sumo version of build setup using
the below command, I am seeing the below issue, Could you please do
the needful in resolving the below issue

https://source.codeaurora.org/external/imx/imx-manifest/tree/?id=871811381ee8d9af3cc309c572ed527e89afb0e0&h=imx-linux-sumo

yocto sumo version Error:

$ repo init -u https://source.codeaurora.org/external/imx/imx-manifest
-b imx-linux-sumo -m imx-4.9.123-2.3.0-8mm_ga.xml
Get https://gerrit.googlesource.com/git-repo/clone.bundle
Get https://gerrit.googlesource.com/git-repo
remote: Counting objects: 1, done
remote: Finding sources: 100% (5/5)
remote: Total 5 (delta 1), reused 5 (delta 1)
Unpacking objects: 100% (5/5), done.
From https://gerrit.googlesource.com/git-repo
   d26146d..6e53844  master     -> origin/master
 * [new tag]         v1.13.0    -> v1.13.0
Get https://source.codeaurora.org/external/imx/imx-manifest
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   161  100   161    0     0    247      0 --:--:-- --:--:-- --:--:--   247
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
curl: (22) The requested URL returned error: 403
Server does not provide clone.bundle; ignoring.
remote: Counting objects: 361, done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 361 (delta 3), reused 0 (delta 0)
Receiving objects: 100% (361/361), 89.40 KiB | 693.00 KiB/s, done.
Resolving deltas: 100% (213/213), done.
From https://source.codeaurora.org/external/imx/imx-manifest
 * [new branch]      imx-android-oreo         -> origin/imx-android-oreo
 * [new branch]      imx-android-pie          -> origin/imx-android-pie
 * [new branch]      imx-linux-morty          -> origin/imx-linux-morty
 * [new branch]      imx-linux-rocko          -> origin/imx-linux-rocko
 * [new branch]      imx-linux-sumo           -> origin/imx-linux-sumo
 * [new branch]      master                   -> origin/master
 * [new tag]         rel_imx_4.9.51_8qm_beta1 -> rel_imx_4.9.51_8qm_beta1
fatal: manifest 'imx-4.9.123-2.3.0-8mm_ga.xml' not available
fatal: manifest imx-4.9.123-2.3.0-8mm_ga.xml not found

Kindly do the needful
Many Thanks in advance

