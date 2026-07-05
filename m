Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AC13C43458
	for <webhook@archiver.kernel.org>; Sun,  5 Jul 2026 22:48:30 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.140107.1783291709860902743
 for <poky@lists.yoctoproject.org>;
 Sun, 05 Jul 2026 15:48:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=rmBdweON;
 spf=pass (domain: smile.fr, ip: 209.85.221.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-47640541585so1417461f8f.1
        for <poky@lists.yoctoproject.org>; Sun, 05 Jul 2026 15:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1783291708; x=1783896508; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CIX6BOHW7NFYH6GwB9/L3bRVq4rnXtDq6fT7jyq5FmQ=;
        b=rmBdweONLAgryF1IR/24I7Z2LJMPAMmuzJZ1LM957aZGjJT2ZAJKzbNaE8kSmZz5sS
         W73WZv01XdF7zeD/50RY3GCPzsogiCRrv0g91CyT1sMltRXmJzfPckpbDDiTD34wvE+K
         FPYtfbHm+n22tJNdyiflkxnNLkSwaqgfrQG+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783291708; x=1783896508;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CIX6BOHW7NFYH6GwB9/L3bRVq4rnXtDq6fT7jyq5FmQ=;
        b=jNfjLcBevywfuYH5vgxrddVsQ4opWgphJ9KvzoYVqx5n0eo87NTWpc5rQ5zdomZWDI
         lma8J6FCyuVcqpo+Pc+qno7Tax7KUk3WAC/OC2A5Mu2xLLlF6GJu235tzbDLE+HYoERp
         ZTA4NtmycFXiR+pFiVvDB8lUZzygtuOyI+yqRPbd1WJNgWauilmr+LtbImBzdNUyWgsN
         bcUzOY88cX6Bay7EMPrpf31GS1YZ7c2JbT+ix0btRL17ee6LfrWJRzVuOgGcJvn8bFYx
         4Qq2L0MU3Y4d90IzePE2Cf8asxaNhsVR7D7PwbIiI3lCqK36Gif0A+QRWVMVZCpUKx5R
         6OPg==
X-Gm-Message-State: AOJu0Yy11knpRh886PZ5InFe06gj2bdpcVZ+IEWo7pthXmx1Yv+P0j/U
	yVBWitwP41+RVrZB72PWx+xmGyGUFcPYIuLEAMssNm5JPnEufA7jxYdLjJQj3XT1kUOHh1ZGk34
	dM7YT6R4=
X-Gm-Gg: AfdE7cnj+tvnH4JAmK2YXy3nMnmG/ZPINo2rgsbaHVwxMmG2nhtOVImDTGWFnuSzQu9
	Avpe3E75MLrUn/fBWIau8UJEyAnXQq40zG30CvZzDxvDhe68x0RE2dSq02NIM/wkhN1+SBy8EsE
	7NqC7tM0I5reY7mgtLbHvKK7MonCvzDoAPOCzd10vx1dOhzH7Pe16IX1ELZdHvP6U3ni/j4JllE
	P9ocPIW36XvKkA0LRFj8X1q/gIotO9YzhXq4mTNwTHXpASRCb/9XsM7HWaM5eyUY3mlMw6LC40A
	BuF/mi+pRAnjMAf6Lak6cUCkR2+bO11yfc4o5xGkT0rGqsOpPjKIOUFwO0qQZALTQSo1ReZdPYM
	ddFb21woHg0Xakrv1iXoPQ/5mM6skbwP7vkg0JLMX3Lp1NnMoUhbhhxMlIuZAGtRaWFITOrNcSy
	xcNeOiK7Kz5bs2JqwzXI9XYzpwqg==
X-Received: by 2002:a05:6000:41f0:b0:473:53b7:e390 with SMTP id ffacd0b85a97d-47aa96997f9mr8689252f8f.11.1783291708079;
        Sun, 05 Jul 2026 15:48:28 -0700 (PDT)
Received: from FRSMI25-LASER.lan ([2001:861:8010:5750:6d3a:72ff:5857:d2a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1d905sm19346073f8f.2.2026.07.05.15.48.27
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 15:48:27 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 1/7] yocto-bsps: update to v6.18.25
Date: Mon,  6 Jul 2026 00:48:11 +0200
Message-ID: <9f65139d96154f8a63d0cfc19200c4044a619f02.1783291504.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1783291504.git.yoann.congal@smile.fr>
References: <cover.1783291504.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 05 Jul 2026 22:48:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13930

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/6.18 to the latest korg -stable release that comprises
the following commits:

    a256b1e6892e7 Linux 6.18.25
    ce383ba615339 rxrpc: Fix missing validation of ticket length in non-XDR key preparsing
    2937f17bbeefb crypto: ccp: Don't attempt to copy ID to userspace if PSP command failed
    051e51aa55fd4 crypto: ccp: Don't attempt to copy PDH cert to userspace if PSP command failed
    111dcc6d0f016 crypto: ccp: Don't attempt to copy CSR to userspace if PSP command failed
    28324a3b62d9c net/packet: fix TOCTOU race on mmap'd vnet_hdr in tpacket_snd()
    6473ed16df1fe ALSA: caiaq: take a reference on the USB device in create_card()
    f8397fc0ff9a4 ALSA: hda/realtek: Add quirk for Legion S7 15IMH
    1d30e8d4a07c1 ALSA: usb-audio: apply quirk for MOONDROP JU Jiu
    c76cf339b8797 f2fs: fix use-after-free of sbi in f2fs_compress_write_end_io()
    028103656b842 writeback: Fix use after free in inode_switch_wbs_work_fn()
    feefd5d5b5ee2 ksmbd: reset rcount per connection in ksmbd_conn_wait_idle_sess_id()
    5e7b8f3c539d6 ksmbd: use check_add_overflow() to prevent u16 DACL size overflow
    790304c02bf9b ksmbd: fix out-of-bounds write in smb2_get_ea() EA alignment
    3e5360b422dd7 ksmbd: validate num_aces and harden ACE walk in smb_inherit_dacl()
    299db777ea0cf ksmbd: validate response sizes in ipc_validate_msg()
    078fae8f50ade smb: client: fix OOB read in smb2_ioctl_query_info QUERY_INFO path
    38a69f08ee82c smb: client: require a full NFS mode SID before reading mode bits
    3943e4565aae7 smb: server: fix max_connections off-by-one in tcp accept path
    283027aa93380 smb: server: fix active_num_conn leak on transport allocation failure
    90089584b2e25 ksmbd: require minimum ACE size in smb_check_perm_dacl()
    3fa185e320197 fuse: fuse_dev_ioctl_clone() should wait for device file to be initialized
    9ef130452eaf1 fuse: quiet down complaints in fuse_conn_limit_write
    1381635aeb7f8 fuse: Check for large folio with SPLICE_F_MOVE
    0c7fca880a40a fuse: abort on fatal signal during sync init
    7de93abfaae1b fuse: reject oversized dirents in page cache
    59970b2586fef f2fs: fix to avoid uninit-value access in f2fs_sanity_check_node_footer
    047c0aef6af37 f2fs: fix to avoid memory leak in f2fs_rename()
    963d2e24d9d92 f2fs: fix UAF caused by decrementing sbi->nr_pages[] in f2fs_write_end_io()
    748c5d08f1a92 f2fs: fix to do sanity check on dcc->discard_cmd_cnt conditionally
    0112e6279420d fs/ntfs3: validate rec->used in journal-replay file record check
    f218fb82877b1 scripts/dtc: Remove unused dts_version in dtc-lexer.l
    c846ed5ac80fa lib/crypto: tests: Drop the default to CRYPTO_SELFTESTS
    ca47b87f24571 kunit: configs: Enable all crypto library tests in all_tests.config
    95c05443aa34e lib/crypto: tests: Introduce CRYPTO_LIB_ENABLE_ALL_FOR_KUNIT
    b0ca42c018837 lib/crypto: tests: Add a .kunitconfig file
    05f723be4d641 kunit: configs: Enable all CRC tests in all_tests.config
    04c61029a3b76 lib/crc: tests: Add a .kunitconfig file
    6897bdfa505f9 lib/crc: tests: Add CRC_ENABLE_ALL_FOR_KUNIT
    e70c01412893c lib/crc: tests: Make crc_kunit test only the enabled CRC variants
    28f77fca44497 sched/debug: Fix avg_vruntime() usage
    c6c87a23de4bd arm64: errata: Work around early CME DVMSync acknowledgement
    ee5ce483d4280 arm64: cputype: Add C1-Pro definitions
    456d6040bb3b2 arm64: tlb: Pass the corresponding mm to __tlbi_sync_s1ish()
    e785d2751b1db arm64: tlb: Introduce __tlbi_sync_s1ish_{kernel,batch}() for TLB maintenance
    243cec136a748 arm64: tlb: Optimize ARM64_WORKAROUND_REPEAT_TLBI
    609624576b6fd arm64: tlb: Allow XZR argument to TLBI ops
    00ce8d6789dae ksmbd: validate owner of durable handle on reconnect
    3d6682726c2d3 ksmbd: fix use-after-free in __ksmbd_close_fd() via durable scavenger
    377bbec04e167 scripts: generate_rust_analyzer.py: define scripts
    07cbb1bd42437 crypto: krb5enc - fix async decrypt skipping hash verification
    41d151254caa7 crypto: krb5enc - fix sleepable flag handling in encrypt dispatch
    b7cddf6c01751 drm/amdgpu: replace PASID IDR with XArray
    e97593f32bd57 net: ethernet: mtk_eth_soc: initialize PPE per-tag-layer MTU registers
    c5cedee5d9738 ipv6: add NULL checks for idev in SRv6 paths
    ecc0eb147806f crypto: authencesn - Fix src offset when decrypting in-place

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 2625f665127f17e0cae887462cbd4f12c57af10c)
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend
index 1a80c658..79cdb16d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend
@@ -8,4 +8,4 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 
 KBRANCH:genericarm64 ?= "v6.18/standard/genericarm64"
-SRCREV_machine:genericarm64 ?= "b37320d600b3206435a10fa3c3d9fe9a574256b2"
+SRCREV_machine:genericarm64 ?= "6ad892116f3c1cc17c0b9df907607b1b5fe02bb8"

