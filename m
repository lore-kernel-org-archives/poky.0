Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B97E44C80039
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 01:06:08 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jan 2011 23:06:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="875600329"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jan 2011 23:06:04 -0800
Message-Id: <ed39cffe9f1688f0806b4f5823ed3a2eae8d7af2.1294469496.git.ke.yu@intel.com>
In-Reply-To: <cover.1294469496.git.ke.yu@intel.com>
References: <cover.1294469496.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 7 Jan 2011 15:57:07 +0800
Date: Sat, 08 Jan 2011 15:14:43 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/7] fetch2: copy bb.fetch to bb.fetch2 as initial code base
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
X-List-Received-Date: Sat, 08 Jan 2011 07:06:10 -0000

bb.fetch2 is intended as a place holder for fetcher overhaul
this patch copy exactly bb.fetch as bb.fetch2 initial code base

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |  833 +++++++++++++++++++++++++++++++++++++
 bitbake/lib/bb/fetch2/bzr.py      |  148 +++++++
 bitbake/lib/bb/fetch2/cvs.py      |  172 ++++++++
 bitbake/lib/bb/fetch2/git.py      |  261 ++++++++++++
 bitbake/lib/bb/fetch2/hg.py       |  180 ++++++++
 bitbake/lib/bb/fetch2/local.py    |   73 ++++
 bitbake/lib/bb/fetch2/osc.py      |  143 +++++++
 bitbake/lib/bb/fetch2/perforce.py |  206 +++++++++
 bitbake/lib/bb/fetch2/repo.py     |   98 +++++
 bitbake/lib/bb/fetch2/ssh.py      |  118 ++++++
 bitbake/lib/bb/fetch2/svk.py      |  104 +++++
 bitbake/lib/bb/fetch2/svn.py      |  204 +++++++++
 bitbake/lib/bb/fetch2/wget.py     |   93 ++++
 13 files changed, 2633 insertions(+), 0 deletions(-)
 create mode 100644 bitbake/lib/bb/fetch2/__init__.py
 create mode 100644 bitbake/lib/bb/fetch2/bzr.py
 create mode 100644 bitbake/lib/bb/fetch2/cvs.py
 create mode 100644 bitbake/lib/bb/fetch2/git.py
 create mode 100644 bitbake/lib/bb/fetch2/hg.py
 create mode 100644 bitbake/lib/bb/fetch2/local.py
 create mode 100644 bitbake/lib/bb/fetch2/osc.py
 create mode 100644 bitbake/lib/bb/fetch2/perforce.py
 create mode 100644 bitbake/lib/bb/fetch2/repo.py
 create mode 100644 bitbake/lib/bb/fetch2/ssh.py
 create mode 100644 bitbake/lib/bb/fetch2/svk.py
 create mode 100644 bitbake/lib/bb/fetch2/svn.py
 create mode 100644 bitbake/lib/bb/fetch2/wget.py

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
new file mode 100644
index 0000000..67e5add
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -0,0 +1,833 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' implementations
+
+Classes for obtaining upstream sources for the
+BitBake build tools.
+"""
+
+# Copyright (C) 2003, 2004  Chris Larson
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# Based on functions from the base bb module, Copyright 2003 Holger Schurig
+
+from __future__ import absolute_import
+from __future__ import print_function
+import os, re
+import logging
+import bb
+from   bb import data
+from   bb import persist_data
+
+logger = logging.getLogger("BitBake.Fetch")
+
+class MalformedUrl(Exception):
+    """Exception raised when encountering an invalid url"""
+
+class FetchError(Exception):
+    """Exception raised when a download fails"""
+
+class NoMethodError(Exception):
+    """Exception raised when there is no method to obtain a supplied url or set of urls"""
+
+class MissingParameterError(Exception):
+    """Exception raised when a fetch method is missing a critical parameter in the url"""
+
+class ParameterError(Exception):
+    """Exception raised when a url cannot be proccessed due to invalid parameters."""
+
+class MD5SumError(Exception):
+    """Exception raised when a MD5SUM of a file does not match the expected one"""
+
+class InvalidSRCREV(Exception):
+    """Exception raised when an invalid SRCREV is encountered"""
+
+def decodeurl(url):
+    """Decodes an URL into the tokens (scheme, network location, path,
+    user, password, parameters).
+    """
+
+    m = re.compile('(?P<type>[^:]*)://((?P<user>.+)@)?(?P<location>[^;]+)(;(?P<parm>.*))?').match(url)
+    if not m:
+        raise MalformedUrl(url)
+
+    type = m.group('type')
+    location = m.group('location')
+    if not location:
+        raise MalformedUrl(url)
+    user = m.group('user')
+    parm = m.group('parm')
+
+    locidx = location.find('/')
+    if locidx != -1 and type.lower() != 'file':
+        host = location[:locidx]
+        path = location[locidx:]
+    else:
+        host = ""
+        path = location
+    if user:
+        m = re.compile('(?P<user>[^:]+)(:?(?P<pswd>.*))').match(user)
+        if m:
+            user = m.group('user')
+            pswd = m.group('pswd')
+    else:
+        user = ''
+        pswd = ''
+
+    p = {}
+    if parm:
+        for s in parm.split(';'):
+            s1, s2 = s.split('=')
+            p[s1] = s2
+
+    return (type, host, path, user, pswd, p)
+
+def encodeurl(decoded):
+    """Encodes a URL from tokens (scheme, network location, path,
+    user, password, parameters).
+    """
+
+    (type, host, path, user, pswd, p) = decoded
+
+    if not type or not path:
+        raise MissingParameterError("Type or path url components missing when encoding %s" % decoded)
+    url = '%s://' % type
+    if user:
+        url += "%s" % user
+        if pswd:
+            url += ":%s" % pswd
+        url += "@"
+    if host:
+        url += "%s" % host
+    url += "%s" % path
+    if p:
+        for parm in p:
+            url += ";%s=%s" % (parm, p[parm])
+
+    return url
+
+def uri_replace(uri, uri_find, uri_replace, d):
+    if not uri or not uri_find or not uri_replace:
+        logger.debug(1, "uri_replace: passed an undefined value, not replacing")
+    uri_decoded = list(decodeurl(uri))
+    uri_find_decoded = list(decodeurl(uri_find))
+    uri_replace_decoded = list(decodeurl(uri_replace))
+    result_decoded = ['', '', '', '', '', {}]
+    for i in uri_find_decoded:
+        loc = uri_find_decoded.index(i)
+        result_decoded[loc] = uri_decoded[loc]
+        if isinstance(i, basestring):
+            if (re.match(i, uri_decoded[loc])):
+                result_decoded[loc] = re.sub(i, uri_replace_decoded[loc], uri_decoded[loc])
+                if uri_find_decoded.index(i) == 2:
+                    if d:
+                        localfn = bb.fetch.localpath(uri, d)
+                        if localfn:
+                            result_decoded[loc] = os.path.join(os.path.dirname(result_decoded[loc]), os.path.basename(bb.fetch.localpath(uri, d)))
+            else:
+                return uri
+    return encodeurl(result_decoded)
+
+methods = []
+urldata_cache = {}
+saved_headrevs = {}
+
+def fetcher_init(d):
+    """
+    Called to initialize the fetchers once the configuration data is known.
+    Calls before this must not hit the cache.
+    """
+    pd = persist_data.persist(d)
+    # When to drop SCM head revisions controlled by user policy
+    srcrev_policy = bb.data.getVar('BB_SRCREV_POLICY', d, 1) or "clear"
+    if srcrev_policy == "cache":
+        logger.debug(1, "Keeping SRCREV cache due to cache policy of: %s", srcrev_policy)
+    elif srcrev_policy == "clear":
+        logger.debug(1, "Clearing SRCREV cache due to cache policy of: %s", srcrev_policy)
+        try:
+            bb.fetch.saved_headrevs = pd['BB_URI_HEADREVS'].items()
+        except:
+            pass
+        del pd['BB_URI_HEADREVS']
+    else:
+        raise FetchError("Invalid SRCREV cache policy of: %s" % srcrev_policy)
+
+    for m in methods:
+        if hasattr(m, "init"):
+            m.init(d)
+
+def fetcher_compare_revisions(d):
+    """
+    Compare the revisions in the persistant cache with current values and
+    return true/false on whether they've changed.
+    """
+
+    pd = persist_data.persist(d)
+    data = pd['BB_URI_HEADREVS'].items()
+    data2 = bb.fetch.saved_headrevs
+
+    changed = False
+    for key in data:
+        if key not in data2 or data2[key] != data[key]:
+            logger.debug(1, "%s changed", key)
+            changed = True
+            return True
+        else:
+            logger.debug(2, "%s did not change", key)
+    return False
+
+# Function call order is usually:
+#   1. init
+#   2. go
+#   3. localpaths
+# localpath can be called at any time
+
+def init(urls, d, setup = True):
+    urldata = {}
+
+    fn = bb.data.getVar('FILE', d, 1)
+    if fn in urldata_cache:
+        urldata = urldata_cache[fn]
+
+    for url in urls:
+        if url not in urldata:
+            urldata[url] = FetchData(url, d)
+
+    if setup:
+        for url in urldata:
+            if not urldata[url].setup:
+                urldata[url].setup_localpath(d)
+
+    urldata_cache[fn] = urldata
+    return urldata
+
+def mirror_from_string(data):
+    return [ i.split() for i in (data or "").replace('\\n','\n').split('\n') if i ]
+
+def removefile(f):
+    try:
+        os.remove(f)
+    except:
+        pass
+
+def verify_checksum(u, ud, d):
+    """
+    verify the MD5 and SHA256 checksum for downloaded src
+
+    return value:
+        - True: checksum matched
+        - False: checksum unmatched
+
+    if checksum is missing in recipes file, "BB_STRICT_CHECKSUM" decide the return value.
+    if BB_STRICT_CHECKSUM = "1" then return false as unmatched, otherwise return true as
+    matched
+    """
+
+    if not ud.type in ["http", "https", "ftp", "ftps"]:
+        return
+
+    md5data = bb.utils.md5_file(ud.localpath)
+    sha256data = bb.utils.sha256_file(ud.localpath)
+
+    if (ud.md5_expected == None or ud.sha256_expected == None):
+        bb.warn("Missing SRC_URI checksum for %s, consider to add\n" \
+                "SRC_URI[%s] = \"%s\"\nSRC_URI[%s] = \"%s\"" \
+                % (ud.localpath, ud.md5_name, md5data, ud.sha256_name, sha256data))
+        if bb.data.getVar("BB_STRICT_CHECKSUM", d, True) == "1":
+            raise FetchError("No checksum specified for %s." % u)
+        return
+
+    if (ud.md5_expected != md5data or ud.sha256_expected != sha256data):
+        bb.error("The checksums for '%s' did not match." % ud.localpath)
+        bb.error("Expected MD5: '%s' and Got: '%s'" % (ud.md5_expected, md5data))
+        bb.error("Expected SHA256: '%s' and Got: '%s'" % (ud.sha256_expected, sha256data))
+        raise FetchError("%s checksum mismatch." % u)
+
+def go(d, urls = None):
+    """
+    Fetch all urls
+    init must have previously been called
+    """
+    if not urls:
+        urls = d.getVar("SRC_URI", 1).split()
+    urldata = init(urls, d, True)
+
+    for u in urls:
+        ud = urldata[u]
+        m = ud.method
+        localpath = ""
+
+        if not ud.localfile:
+            continue
+
+        lf = bb.utils.lockfile(ud.lockfile)
+
+        if m.try_premirror(u, ud, d):
+            # First try fetching uri, u, from PREMIRRORS
+            mirrors = mirror_from_string(bb.data.getVar('PREMIRRORS', d, True))
+            localpath = try_mirrors(d, u, mirrors, False, m.forcefetch(u, ud, d))
+        elif os.path.exists(ud.localfile):
+            localpath = ud.localfile
+
+        # Need to re-test forcefetch() which will return true if our copy is too old
+        if m.forcefetch(u, ud, d) or not localpath:
+            # Next try fetching from the original uri, u
+            try:
+                m.go(u, ud, d)
+                localpath = ud.localpath
+            except FetchError:
+                # Remove any incomplete file
+                removefile(ud.localpath)
+                # Finally, try fetching uri, u, from MIRRORS
+                mirrors = mirror_from_string(bb.data.getVar('MIRRORS', d, True))
+                localpath = try_mirrors (d, u, mirrors)
+                if not localpath or not os.path.exists(localpath):
+                    raise FetchError("Unable to fetch URL %s from any source." % u)
+
+        ud.localpath = localpath
+
+        if os.path.exists(ud.md5):
+            # Touch the md5 file to show active use of the download
+            try:
+                os.utime(ud.md5, None)
+            except:
+                # Errors aren't fatal here
+                pass
+        else:
+            # Only check the checksums if we've not seen this item before
+            verify_checksum(u, ud, d)
+            Fetch.write_md5sum(u, ud, d)
+
+        bb.utils.unlockfile(lf)
+
+def checkstatus(d, urls = None):
+    """
+    Check all urls exist upstream
+    init must have previously been called
+    """
+    urldata = init([], d, True)
+
+    if not urls:
+        urls = urldata
+
+    for u in urls:
+        ud = urldata[u]
+        m = ud.method
+        logger.debug(1, "Testing URL %s" % u)
+        # First try checking uri, u, from PREMIRRORS
+        mirrors = mirror_from_string(bb.data.getVar('PREMIRRORS', d, True))
+        ret = try_mirrors(d, u, mirrors, True)
+        if not ret:
+            # Next try checking from the original uri, u
+            try:
+                ret = m.checkstatus(u, ud, d)
+            except:
+                # Finally, try checking uri, u, from MIRRORS
+                mirrors = mirror_from_string(bb.data.getVar('MIRRORS', d, True))
+                ret = try_mirrors (d, u, mirrors, True)
+
+        if not ret:
+            raise FetchError("URL %s doesn't work" % u)
+
+def localpaths(d):
+    """
+    Return a list of the local filenames, assuming successful fetch
+    """
+    local = []
+    urldata = init([], d, True)
+
+    for u in urldata:
+        ud = urldata[u]
+        local.append(ud.localpath)
+
+    return local
+
+srcrev_internal_call = False
+
+def get_srcrev(d):
+    """
+    Return the version string for the current package
+    (usually to be used as PV)
+    Most packages usually only have one SCM so we just pass on the call.
+    In the multi SCM case, we build a value based on SRCREV_FORMAT which must
+    have been set.
+    """
+
+    #
+    # Ugly code alert. localpath in the fetchers will try to evaluate SRCREV which
+    # could translate into a call to here. If it does, we need to catch this
+    # and provide some way so it knows get_srcrev is active instead of being
+    # some number etc. hence the srcrev_internal_call tracking and the magic
+    # "SRCREVINACTION" return value.
+    #
+    # Neater solutions welcome!
+    #
+    if bb.fetch.srcrev_internal_call:
+        return "SRCREVINACTION"
+
+    scms = []
+
+    # Only call setup_localpath on URIs which supports_srcrev()
+    urldata = init(bb.data.getVar('SRC_URI', d, 1).split(), d, False)
+    for u in urldata:
+        ud = urldata[u]
+        if ud.method.supports_srcrev():
+            if not ud.setup:
+                ud.setup_localpath(d)
+            scms.append(u)
+
+    if len(scms) == 0:
+        logger.error("SRCREV was used yet no valid SCM was found in SRC_URI")
+        raise ParameterError
+
+    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache":
+        bb.data.setVar('__BB_DONT_CACHE', '1', d)
+
+    if len(scms) == 1:
+        return urldata[scms[0]].method.sortable_revision(scms[0], urldata[scms[0]], d)
+
+    #
+    # Mutiple SCMs are in SRC_URI so we resort to SRCREV_FORMAT
+    #
+    format = bb.data.getVar('SRCREV_FORMAT', d, 1)
+    if not format:
+        logger.error("The SRCREV_FORMAT variable must be set when multiple SCMs are used.")
+        raise ParameterError
+
+    for scm in scms:
+        if 'name' in urldata[scm].parm:
+            name = urldata[scm].parm["name"]
+            rev = urldata[scm].method.sortable_revision(scm, urldata[scm], d)
+            format = format.replace(name, rev)
+
+    return format
+
+def localpath(url, d, cache = True):
+    """
+    Called from the parser with cache=False since the cache isn't ready
+    at this point. Also called from classed in OE e.g. patch.bbclass
+    """
+    ud = init([url], d)
+    if ud[url].method:
+        return ud[url].localpath
+    return url
+
+def runfetchcmd(cmd, d, quiet = False):
+    """
+    Run cmd returning the command output
+    Raise an error if interrupted or cmd fails
+    Optionally echo command output to stdout
+    """
+
+    # Need to export PATH as binary could be in metadata paths
+    # rather than host provided
+    # Also include some other variables.
+    # FIXME: Should really include all export varaiables?
+    exportvars = ['PATH', 'GIT_PROXY_COMMAND', 'GIT_PROXY_HOST',
+                  'GIT_PROXY_PORT', 'GIT_CONFIG', 'http_proxy', 'ftp_proxy',
+                  'https_proxy', 'no_proxy', 'ALL_PROXY', 'all_proxy',
+                  'SSH_AUTH_SOCK', 'SSH_AGENT_PID', 'HOME']
+
+    for var in exportvars:
+        val = data.getVar(var, d, True)
+        if val:
+            cmd = 'export ' + var + '=\"%s\"; %s' % (val, cmd)
+
+    logger.debug(1, "Running %s", cmd)
+
+    # redirect stderr to stdout
+    stdout_handle = os.popen(cmd + " 2>&1", "r")
+    output = ""
+
+    while True:
+        line = stdout_handle.readline()
+        if not line:
+            break
+        if not quiet:
+            print(line, end=' ')
+        output += line
+
+    status = stdout_handle.close() or 0
+    signal = status >> 8
+    exitstatus = status & 0xff
+
+    if signal:
+        raise FetchError("Fetch command %s failed with signal %s, output:\n%s" % (cmd, signal, output))
+    elif status != 0:
+        raise FetchError("Fetch command %s failed with exit code %s, output:\n%s" % (cmd, status, output))
+
+    return output
+
+def try_mirrors(d, uri, mirrors, check = False, force = False):
+    """
+    Try to use a mirrored version of the sources.
+    This method will be automatically called before the fetchers go.
+
+    d Is a bb.data instance
+    uri is the original uri we're trying to download
+    mirrors is the list of mirrors we're going to try
+    """
+    fpath = os.path.join(data.getVar("DL_DIR", d, 1), os.path.basename(uri))
+    if not check and os.access(fpath, os.R_OK) and not force:
+        logger.debug(1, "%s already exists, skipping checkout." % fpath)
+        return fpath
+
+    ld = d.createCopy()
+    for (find, replace) in mirrors:
+        newuri = uri_replace(uri, find, replace, ld)
+        if newuri != uri:
+            try:
+                ud = FetchData(newuri, ld)
+            except bb.fetch.NoMethodError:
+                logger.debug(1, "No method for %s", uri)
+                continue
+
+            ud.setup_localpath(ld)
+
+            try:
+                if check:
+                    found = ud.method.checkstatus(newuri, ud, ld)
+                    if found:
+                        return found
+                else:
+                    ud.method.go(newuri, ud, ld)
+                    return ud.localpath
+            except (bb.fetch.MissingParameterError,
+                    bb.fetch.FetchError,
+                    bb.fetch.MD5SumError):
+                import sys
+                (type, value, traceback) = sys.exc_info()
+                logger.debug(2, "Mirror fetch failure: %s" % value)
+                removefile(ud.localpath)
+                continue
+    return None
+
+
+class FetchData(object):
+    """
+    A class which represents the fetcher state for a given URI.
+    """
+    def __init__(self, url, d):
+        self.localfile = ""
+        (self.type, self.host, self.path, self.user, self.pswd, self.parm) = decodeurl(data.expand(url, d))
+        self.date = Fetch.getSRCDate(self, d)
+        self.url = url
+        if not self.user and "user" in self.parm:
+            self.user = self.parm["user"]
+        if not self.pswd and "pswd" in self.parm:
+            self.pswd = self.parm["pswd"]
+        self.setup = False
+
+        if "name" in self.parm:
+            self.md5_name = "%s.md5sum" % self.parm["name"]
+            self.sha256_name = "%s.sha256sum" % self.parm["name"]
+        else:
+            self.md5_name = "md5sum"
+            self.sha256_name = "sha256sum"
+        self.md5_expected = bb.data.getVarFlag("SRC_URI", self.md5_name, d)
+        self.sha256_expected = bb.data.getVarFlag("SRC_URI", self.sha256_name, d)
+
+        for m in methods:
+            if m.supports(url, self, d):
+                self.method = m
+                return
+        raise NoMethodError("Missing implementation for url %s" % url)
+
+    def setup_localpath(self, d):
+        self.setup = True
+        if "localpath" in self.parm:
+            # if user sets localpath for file, use it instead.
+            self.localpath = self.parm["localpath"]
+            self.basename = os.path.basename(self.localpath)
+        else:
+            premirrors = bb.data.getVar('PREMIRRORS', d, True)
+            local = ""
+            if premirrors and self.url:
+                aurl = self.url.split(";")[0]
+                mirrors = mirror_from_string(premirrors)
+                for (find, replace) in mirrors:
+                    if replace.startswith("file://"):
+                        path = aurl.split("://")[1]
+                        path = path.split(";")[0]
+                        local = replace.split("://")[1] + os.path.basename(path)
+                        if local == aurl or not os.path.exists(local) or os.path.isdir(local):
+                            local = ""
+                self.localpath = local
+            if not local:
+                try:
+                    bb.fetch.srcrev_internal_call = True
+                    self.localpath = self.method.localpath(self.url, self, d)
+                finally:
+                    bb.fetch.srcrev_internal_call = False
+                # We have to clear data's internal caches since the cached value of SRCREV is now wrong.
+                # Horrible...
+                bb.data.delVar("ISHOULDNEVEREXIST", d)
+
+        if self.localpath is not None:
+            # Note: These files should always be in DL_DIR whereas localpath may not be.
+            basepath = bb.data.expand("${DL_DIR}/%s" % os.path.basename(self.localpath), d)
+            self.md5 = basepath + '.md5'
+            self.lockfile = basepath + '.lock'
+
+
+class Fetch(object):
+    """Base class for 'fetch'ing data"""
+
+    def __init__(self, urls = []):
+        self.urls = []
+
+    def supports(self, url, urldata, d):
+        """
+        Check to see if this fetch class supports a given url.
+        """
+        return 0
+
+    def localpath(self, url, urldata, d):
+        """
+        Return the local filename of a given url assuming a successful fetch.
+        Can also setup variables in urldata for use in go (saving code duplication
+        and duplicate code execution)
+        """
+        return url
+    def _strip_leading_slashes(self, relpath):
+        """
+        Remove leading slash as os.path.join can't cope
+        """
+        while os.path.isabs(relpath):
+            relpath = relpath[1:]
+        return relpath
+
+    def setUrls(self, urls):
+        self.__urls = urls
+
+    def getUrls(self):
+        return self.__urls
+
+    urls = property(getUrls, setUrls, None, "Urls property")
+
+    def forcefetch(self, url, urldata, d):
+        """
+        Force a fetch, even if localpath exists?
+        """
+        return False
+
+    def supports_srcrev(self):
+        """
+        The fetcher supports auto source revisions (SRCREV)
+        """
+        return False
+
+    def go(self, url, urldata, d):
+        """
+        Fetch urls
+        Assumes localpath was called first
+        """
+        raise NoMethodError("Missing implementation for url")
+
+    def try_premirror(self, url, urldata, d):
+        """
+        Should premirrors be used?
+        """
+        if urldata.method.forcefetch(url, urldata, d):
+            return True
+        elif os.path.exists(urldata.md5) and os.path.exists(urldata.localfile):
+            return False
+        else:
+            return True
+
+    def checkstatus(self, url, urldata, d):
+        """
+        Check the status of a URL
+        Assumes localpath was called first
+        """
+        logger.info("URL %s could not be checked for status since no method exists.", url)
+        return True
+
+    def getSRCDate(urldata, d):
+        """
+        Return the SRC Date for the component
+
+        d the bb.data module
+        """
+        if "srcdate" in urldata.parm:
+            return urldata.parm['srcdate']
+
+        pn = data.getVar("PN", d, 1)
+
+        if pn:
+            return data.getVar("SRCDATE_%s" % pn, d, 1) or data.getVar("CVSDATE_%s" % pn, d, 1) or data.getVar("SRCDATE", d, 1) or data.getVar("CVSDATE", d, 1) or data.getVar("DATE", d, 1)
+
+        return data.getVar("SRCDATE", d, 1) or data.getVar("CVSDATE", d, 1) or data.getVar("DATE", d, 1)
+    getSRCDate = staticmethod(getSRCDate)
+
+    def srcrev_internal_helper(ud, d):
+        """
+        Return:
+            a) a source revision if specified
+            b) True if auto srcrev is in action
+            c) False otherwise
+        """
+
+        if 'rev' in ud.parm:
+            return ud.parm['rev']
+
+        if 'tag' in ud.parm:
+            return ud.parm['tag']
+
+        rev = None
+        if 'name' in ud.parm:
+            pn = data.getVar("PN", d, 1)
+            rev = data.getVar("SRCREV_%s_pn-%s" % (ud.parm['name'], pn), d, 1)
+            if not rev:
+                rev = data.getVar("SRCREV_pn-%s_%s" % (pn, ud.parm['name']), d, 1)
+            if not rev:
+                rev = data.getVar("SRCREV_%s" % (ud.parm['name']), d, 1)           
+        if not rev:
+            rev = data.getVar("SRCREV", d, 1)
+        if rev == "INVALID":
+            raise InvalidSRCREV("Please set SRCREV to a valid value")
+        if not rev:
+            return False
+        if rev is "SRCREVINACTION":
+            return True
+        return rev
+
+    srcrev_internal_helper = staticmethod(srcrev_internal_helper)
+
+    def localcount_internal_helper(ud, d):
+        """
+        Return:
+            a) a locked localcount if specified
+            b) None otherwise
+        """
+
+        localcount = None
+        if 'name' in ud.parm:
+            pn = data.getVar("PN", d, 1)
+            localcount = data.getVar("LOCALCOUNT_" + ud.parm['name'], d, 1)
+        if not localcount:
+            localcount = data.getVar("LOCALCOUNT", d, 1)
+        return localcount
+
+    localcount_internal_helper = staticmethod(localcount_internal_helper)
+
+    def verify_md5sum(ud, got_sum):
+        """
+        Verify the md5sum we wanted with the one we got
+        """
+        wanted_sum = ud.parm.get('md5sum')
+        if not wanted_sum:
+            return True
+
+        return wanted_sum == got_sum
+    verify_md5sum = staticmethod(verify_md5sum)
+
+    def write_md5sum(url, ud, d):
+        md5data = bb.utils.md5_file(ud.localpath)
+        # verify the md5sum
+        if not Fetch.verify_md5sum(ud, md5data):
+            raise MD5SumError(url)
+
+        md5out = file(ud.md5, 'w')
+        md5out.write(md5data)
+        md5out.close()
+    write_md5sum = staticmethod(write_md5sum)
+
+    def latest_revision(self, url, ud, d):
+        """
+        Look in the cache for the latest revision, if not present ask the SCM.
+        """
+        if not hasattr(self, "_latest_revision"):
+            raise ParameterError
+
+        pd = persist_data.persist(d)
+        revs = pd['BB_URI_HEADREVS']
+        key = self.generate_revision_key(url, ud, d)
+        rev = revs[key]
+        if rev != None:
+            return str(rev)
+
+        revs[key] = rev = self._latest_revision(url, ud, d)
+        return rev
+
+    def sortable_revision(self, url, ud, d):
+        """
+
+        """
+        if hasattr(self, "_sortable_revision"):
+            return self._sortable_revision(url, ud, d)
+
+        pd = persist_data.persist(d)
+        localcounts = pd['BB_URI_LOCALCOUNT']
+        key = self.generate_revision_key(url, ud, d)
+
+        latest_rev = self._build_revision(url, ud, d)
+        last_rev = localcounts[key + '_rev']
+        uselocalcount = bb.data.getVar("BB_LOCALCOUNT_OVERRIDE", d, True) or False
+        count = None
+        if uselocalcount:
+            count = Fetch.localcount_internal_helper(ud, d)
+        if count is None:
+            count = localcounts[key + '_count']
+
+        if last_rev == latest_rev:
+            return str(count + "+" + latest_rev)
+
+        buildindex_provided = hasattr(self, "_sortable_buildindex")
+        if buildindex_provided:
+            count = self._sortable_buildindex(url, ud, d, latest_rev)
+
+        if count is None:
+            count = "0"
+        elif uselocalcount or buildindex_provided:
+            count = str(count)
+        else:
+            count = str(int(count) + 1)
+
+        localcounts[key + '_rev'] = latest_rev
+        localcounts[key + '_count'] = count
+
+        return str(count + "+" + latest_rev)
+
+    def generate_revision_key(self, url, ud, d):
+        key = self._revision_key(url, ud, d)
+        return "%s-%s" % (key, bb.data.getVar("PN", d, True) or "")
+
+from . import cvs
+from . import git
+from . import local
+from . import svn
+from . import wget
+from . import svk
+from . import ssh
+from . import perforce
+from . import bzr
+from . import hg
+from . import osc
+from . import repo
+
+methods.append(local.Local())
+methods.append(wget.Wget())
+methods.append(svn.Svn())
+methods.append(git.Git())
+methods.append(cvs.Cvs())
+methods.append(svk.Svk())
+methods.append(ssh.SSH())
+methods.append(perforce.Perforce())
+methods.append(bzr.Bzr())
+methods.append(hg.Hg())
+methods.append(osc.Osc())
+methods.append(repo.Repo())
diff --git a/bitbake/lib/bb/fetch2/bzr.py b/bitbake/lib/bb/fetch2/bzr.py
new file mode 100644
index 0000000..afaf799
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/bzr.py
@@ -0,0 +1,148 @@
+"""
+BitBake 'Fetch' implementation for bzr.
+
+"""
+
+# Copyright (C) 2007 Ross Burton
+# Copyright (C) 2007 Richard Purdie
+#
+#   Classes for obtaining upstream sources for the
+#   BitBake build tools.
+#   Copyright (C) 2003, 2004  Chris Larson
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+import os
+import sys
+import logging
+import bb
+from bb import data
+from bb.fetch import Fetch, FetchError, runfetchcmd, logger
+
+class Bzr(Fetch):
+    def supports(self, url, ud, d):
+        return ud.type in ['bzr']
+
+    def localpath (self, url, ud, d):
+
+        # Create paths to bzr checkouts
+        relpath = self._strip_leading_slashes(ud.path)
+        ud.pkgdir = os.path.join(data.expand('${BZRDIR}', d), ud.host, relpath)
+
+        revision = Fetch.srcrev_internal_helper(ud, d)
+        if revision is True:
+            ud.revision = self.latest_revision(url, ud, d)
+        elif revision:
+            ud.revision = revision
+
+        if not ud.revision:
+            ud.revision = self.latest_revision(url, ud, d)
+
+        ud.localfile = data.expand('bzr_%s_%s_%s.tar.gz' % (ud.host, ud.path.replace('/', '.'), ud.revision), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def _buildbzrcommand(self, ud, d, command):
+        """
+        Build up an bzr commandline based on ud
+        command is "fetch", "update", "revno"
+        """
+
+        basecmd = data.expand('${FETCHCMD_bzr}', d)
+
+        proto =  ud.parm.get('proto', 'http')
+
+        bzrroot = ud.host + ud.path
+
+        options = []
+
+        if command is "revno":
+            bzrcmd = "%s revno %s %s://%s" % (basecmd, " ".join(options), proto, bzrroot)
+        else:
+            if ud.revision:
+                options.append("-r %s" % ud.revision)
+
+            if command is "fetch":
+                bzrcmd = "%s co %s %s://%s" % (basecmd, " ".join(options), proto, bzrroot)
+            elif command is "update":
+                bzrcmd = "%s pull %s --overwrite" % (basecmd, " ".join(options))
+            else:
+                raise FetchError("Invalid bzr command %s" % command)
+
+        return bzrcmd
+
+    def go(self, loc, ud, d):
+        """Fetch url"""
+
+        if os.access(os.path.join(ud.pkgdir, os.path.basename(ud.pkgdir), '.bzr'), os.R_OK):
+            bzrcmd = self._buildbzrcommand(ud, d, "update")
+            logger.debug(1, "BZR Update %s", loc)
+            os.chdir(os.path.join (ud.pkgdir, os.path.basename(ud.path)))
+            runfetchcmd(bzrcmd, d)
+        else:
+            bb.utils.remove(os.path.join(ud.pkgdir, os.path.basename(ud.pkgdir)), True)
+            bzrcmd = self._buildbzrcommand(ud, d, "fetch")
+            logger.debug(1, "BZR Checkout %s", loc)
+            bb.mkdirhier(ud.pkgdir)
+            os.chdir(ud.pkgdir)
+            logger.debug(1, "Running %s", bzrcmd)
+            runfetchcmd(bzrcmd, d)
+
+        os.chdir(ud.pkgdir)
+
+        scmdata = ud.parm.get("scmdata", "")
+        if scmdata == "keep":
+            tar_flags = ""
+        else:
+            tar_flags = "--exclude '.bzr' --exclude '.bzrtags'"
+
+        # tar them up to a defined filename
+        try:
+            runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, os.path.basename(ud.pkgdir)), d)
+        except:
+            t, v, tb = sys.exc_info()
+            try:
+                os.unlink(ud.localpath)
+            except OSError:
+                pass
+            raise t, v, tb
+
+    def supports_srcrev(self):
+        return True
+
+    def _revision_key(self, url, ud, d):
+        """
+        Return a unique key for the url
+        """
+        return "bzr:" + ud.pkgdir
+
+    def _latest_revision(self, url, ud, d):
+        """
+        Return the latest upstream revision number
+        """
+        logger.debug(2, "BZR fetcher hitting network for %s", url)
+
+        output = runfetchcmd(self._buildbzrcommand(ud, d, "revno"), d, True)
+
+        return output.strip()
+
+    def _sortable_revision(self, url, ud, d):
+        """
+        Return a sortable revision number which in our case is the revision number
+        """
+
+        return self._build_revision(url, ud, d)
+
+    def _build_revision(self, url, ud, d):
+        return ud.revision
diff --git a/bitbake/lib/bb/fetch2/cvs.py b/bitbake/lib/bb/fetch2/cvs.py
new file mode 100644
index 0000000..0edb794
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/cvs.py
@@ -0,0 +1,172 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' implementations
+
+Classes for obtaining upstream sources for the
+BitBake build tools.
+
+"""
+
+# Copyright (C) 2003, 2004  Chris Larson
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+#Based on functions from the base bb module, Copyright 2003 Holger Schurig
+#
+
+import os
+import logging
+import bb
+from   bb import data
+from bb.fetch import Fetch, FetchError, MissingParameterError, logger
+
+class Cvs(Fetch):
+    """
+    Class to fetch a module or modules from cvs repositories
+    """
+    def supports(self, url, ud, d):
+        """
+        Check to see if a given url can be fetched with cvs.
+        """
+        return ud.type in ['cvs']
+
+    def localpath(self, url, ud, d):
+        if not "module" in ud.parm:
+            raise MissingParameterError("cvs method needs a 'module' parameter")
+        ud.module = ud.parm["module"]
+
+        ud.tag = ud.parm.get('tag', "")
+
+        # Override the default date in certain cases
+        if 'date' in ud.parm:
+            ud.date = ud.parm['date']
+        elif ud.tag:
+            ud.date = ""
+
+        norecurse = ''
+        if 'norecurse' in ud.parm:
+            norecurse = '_norecurse'
+
+        fullpath = ''
+        if 'fullpath' in ud.parm:
+            fullpath = '_fullpath'
+
+        ud.localfile = data.expand('%s_%s_%s_%s%s%s.tar.gz' % (ud.module.replace('/', '.'), ud.host, ud.tag, ud.date, norecurse, fullpath), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def forcefetch(self, url, ud, d):
+        if (ud.date == "now"):
+            return True
+        return False
+
+    def go(self, loc, ud, d):
+
+        method = ud.parm.get('method', 'pserver')
+        localdir = ud.parm.get('localdir', ud.module)
+        cvs_port = ud.parm.get('port', '')
+
+        cvs_rsh = None
+        if method == "ext":
+            if "rsh" in ud.parm:
+                cvs_rsh = ud.parm["rsh"]
+
+        if method == "dir":
+            cvsroot = ud.path
+        else:
+            cvsroot = ":" + method
+            cvsproxyhost = data.getVar('CVS_PROXY_HOST', d, True)
+            if cvsproxyhost:
+                cvsroot += ";proxy=" + cvsproxyhost
+            cvsproxyport = data.getVar('CVS_PROXY_PORT', d, True)
+            if cvsproxyport:
+                cvsroot += ";proxyport=" + cvsproxyport
+            cvsroot += ":" + ud.user
+            if ud.pswd:
+                cvsroot += ":" + ud.pswd
+            cvsroot += "@" + ud.host + ":" + cvs_port + ud.path
+
+        options = []
+        if 'norecurse' in ud.parm:
+            options.append("-l")
+        if ud.date:
+            # treat YYYYMMDDHHMM specially for CVS
+            if len(ud.date) == 12:
+                options.append("-D \"%s %s:%s UTC\"" % (ud.date[0:8], ud.date[8:10], ud.date[10:12]))
+            else:
+                options.append("-D \"%s UTC\"" % ud.date)
+        if ud.tag:
+            options.append("-r %s" % ud.tag)
+
+        localdata = data.createCopy(d)
+        data.setVar('OVERRIDES', "cvs:%s" % data.getVar('OVERRIDES', localdata), localdata)
+        data.update_data(localdata)
+
+        data.setVar('CVSROOT', cvsroot, localdata)
+        data.setVar('CVSCOOPTS', " ".join(options), localdata)
+        data.setVar('CVSMODULE', ud.module, localdata)
+        cvscmd = data.getVar('FETCHCOMMAND', localdata, 1)
+        cvsupdatecmd = data.getVar('UPDATECOMMAND', localdata, 1)
+
+        if cvs_rsh:
+            cvscmd = "CVS_RSH=\"%s\" %s" % (cvs_rsh, cvscmd)
+            cvsupdatecmd = "CVS_RSH=\"%s\" %s" % (cvs_rsh, cvsupdatecmd)
+
+        # create module directory
+        logger.debug(2, "Fetch: checking for module directory")
+        pkg = data.expand('${PN}', d)
+        pkgdir = os.path.join(data.expand('${CVSDIR}', localdata), pkg)
+        moddir = os.path.join(pkgdir, localdir)
+        if os.access(os.path.join(moddir, 'CVS'), os.R_OK):
+            logger.info("Update " + loc)
+            # update sources there
+            os.chdir(moddir)
+            myret = os.system(cvsupdatecmd)
+        else:
+            logger.info("Fetch " + loc)
+            # check out sources there
+            bb.mkdirhier(pkgdir)
+            os.chdir(pkgdir)
+            logger.debug(1, "Running %s", cvscmd)
+            myret = os.system(cvscmd)
+
+        if myret != 0 or not os.access(moddir, os.R_OK):
+            try:
+                os.rmdir(moddir)
+            except OSError:
+                pass
+            raise FetchError(ud.module)
+
+        scmdata = ud.parm.get("scmdata", "")
+        if scmdata == "keep":
+            tar_flags = ""
+        else:
+            tar_flags = "--exclude 'CVS'"
+
+        # tar them up to a defined filename
+        if 'fullpath' in ud.parm:
+            os.chdir(pkgdir)
+            myret = os.system("tar %s -czf %s %s" % (tar_flags, ud.localpath, localdir))
+        else:
+            os.chdir(moddir)
+            os.chdir('..')
+            myret = os.system("tar %s -czf %s %s" % (tar_flags, ud.localpath, os.path.basename(moddir)))
+
+        if myret != 0:
+            try:
+                os.unlink(ud.localpath)
+            except OSError:
+                pass
+            raise FetchError(ud.module)
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
new file mode 100644
index 0000000..de415ec
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -0,0 +1,261 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' git implementation
+
+"""
+
+#Copyright (C) 2005 Richard Purdie
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+import os
+import bb
+from   bb    import data
+from   bb.fetch import Fetch
+from   bb.fetch import runfetchcmd
+from   bb.fetch import logger
+
+class Git(Fetch):
+    """Class to fetch a module or modules from git repositories"""
+    def init(self, d):
+        #
+        # Only enable _sortable revision if the key is set
+        #
+        if bb.data.getVar("BB_GIT_CLONE_FOR_SRCREV", d, True):
+            self._sortable_buildindex = self._sortable_buildindex_disabled
+    def supports(self, url, ud, d):
+        """
+        Check to see if a given url can be fetched with git.
+        """
+        return ud.type in ['git']
+
+    def localpath(self, url, ud, d):
+
+        if 'protocol' in ud.parm:
+            ud.proto = ud.parm['protocol']
+        elif not ud.host:
+            ud.proto = 'file'
+        else:
+            ud.proto = "rsync"
+
+        ud.branch = ud.parm.get("branch", "master")
+
+        gitsrcname = '%s%s' % (ud.host, ud.path.replace('/', '.'))
+        ud.mirrortarball = 'git_%s.tar.gz' % (gitsrcname)
+        ud.clonedir = os.path.join(data.expand('${GITDIR}', d), gitsrcname)
+
+        tag = Fetch.srcrev_internal_helper(ud, d)
+        if tag is True:
+            ud.tag = self.latest_revision(url, ud, d)
+        elif tag:
+            ud.tag = tag
+
+        if not ud.tag or ud.tag == "master":
+            ud.tag = self.latest_revision(url, ud, d)
+
+        subdir = ud.parm.get("subpath", "")
+        if subdir != "":
+            if subdir.endswith("/"):
+                subdir = subdir[:-1]
+            subdirpath = os.path.join(ud.path, subdir);
+        else:
+            subdirpath = ud.path;
+
+        if 'fullclone' in ud.parm:
+            ud.localfile = ud.mirrortarball
+        else:
+            ud.localfile = data.expand('git_%s%s_%s.tar.gz' % (ud.host, subdirpath.replace('/', '.'), ud.tag), d)
+
+        ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
+
+        if 'noclone' in ud.parm:
+            ud.localfile = None
+            return None
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def forcefetch(self, url, ud, d):
+        if 'fullclone' in ud.parm:
+            return True
+        if 'noclone' in ud.parm:
+            return False
+        if os.path.exists(ud.localpath):
+            return False
+        if not self._contains_ref(ud.tag, d):
+            return True
+        return False
+
+    def try_premirror(self, u, ud, d):
+        if 'noclone' in ud.parm:
+            return False
+        if os.path.exists(ud.clonedir):
+            return False
+        if os.path.exists(ud.localpath):
+            return False
+
+        return True
+
+    def go(self, loc, ud, d):
+        """Fetch url"""
+
+        if ud.user:
+            username = ud.user + '@'
+        else:
+            username = ""
+
+        repofile = os.path.join(data.getVar("DL_DIR", d, 1), ud.mirrortarball)
+
+        coname = '%s' % (ud.tag)
+        codir = os.path.join(ud.clonedir, coname)
+
+        # If we have no existing clone and no mirror tarball, try and obtain one
+        if not os.path.exists(ud.clonedir) and not os.path.exists(repofile):
+            try:
+                Fetch.try_mirrors(ud.mirrortarball)
+            except:
+                pass
+
+        # If the checkout doesn't exist and the mirror tarball does, extract it
+        if not os.path.exists(ud.clonedir) and os.path.exists(repofile):
+            bb.mkdirhier(ud.clonedir)
+            os.chdir(ud.clonedir)
+            runfetchcmd("tar -xzf %s" % (repofile), d)
+
+        # If the repo still doesn't exist, fallback to cloning it
+        if not os.path.exists(ud.clonedir):
+            runfetchcmd("%s clone -n %s://%s%s%s %s" % (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir), d)
+
+        os.chdir(ud.clonedir)
+        # Update the checkout if needed
+        if not self._contains_ref(ud.tag, d) or 'fullclone' in ud.parm:
+            # Remove all but the .git directory
+            runfetchcmd("rm * -Rf", d)
+            if 'fullclone' in ud.parm:
+                runfetchcmd("%s fetch --all" % (ud.basecmd), d)
+            else:
+                runfetchcmd("%s fetch %s://%s%s%s %s" % (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.branch), d)
+            runfetchcmd("%s fetch --tags %s://%s%s%s" % (ud.basecmd, ud.proto, username, ud.host, ud.path), d)
+            runfetchcmd("%s prune-packed" % ud.basecmd, d)
+            runfetchcmd("%s pack-redundant --all | xargs -r rm" % ud.basecmd, d)
+
+        # Generate a mirror tarball if needed
+        os.chdir(ud.clonedir)
+        mirror_tarballs = data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True)
+        if mirror_tarballs != "0" or 'fullclone' in ud.parm:
+            logger.info("Creating tarball of git repository")
+            runfetchcmd("tar -czf %s %s" % (repofile, os.path.join(".", ".git", "*") ), d)
+
+        if 'fullclone' in ud.parm:
+            return
+
+        if os.path.exists(codir):
+            bb.utils.prunedir(codir)
+
+        subdir = ud.parm.get("subpath", "")
+        if subdir != "":
+            if subdir.endswith("/"):
+                subdirbase = os.path.basename(subdir[:-1])
+            else:
+                subdirbase = os.path.basename(subdir)
+        else:
+            subdirbase = ""
+
+        if subdir != "":
+            readpathspec = ":%s" % (subdir)
+            codir = os.path.join(codir, "git")
+            coprefix = os.path.join(codir, subdirbase, "")
+        else:
+            readpathspec = ""
+            coprefix = os.path.join(codir, "git", "")
+
+        scmdata = ud.parm.get("scmdata", "")
+        if scmdata == "keep":
+            runfetchcmd("%s clone -n %s %s" % (ud.basecmd, ud.clonedir, coprefix), d)
+            os.chdir(coprefix)
+            runfetchcmd("%s checkout -q -f %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
+        else:
+            bb.mkdirhier(codir)
+            os.chdir(ud.clonedir)
+            runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
+            runfetchcmd("%s checkout-index -q -f --prefix=%s -a" % (ud.basecmd, coprefix), d)
+
+        os.chdir(codir)
+        logger.info("Creating tarball of git checkout")
+        runfetchcmd("tar -czf %s %s" % (ud.localpath, os.path.join(".", "*") ), d)
+
+        os.chdir(ud.clonedir)
+        bb.utils.prunedir(codir)
+
+    def supports_srcrev(self):
+        return True
+
+    def _contains_ref(self, tag, d):
+        basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
+        output = runfetchcmd("%s log --pretty=oneline -n 1 %s -- 2> /dev/null | wc -l" % (basecmd, tag), d, quiet=True)
+        return output.split()[0] != "0"
+
+    def _revision_key(self, url, ud, d):
+        """
+        Return a unique key for the url
+        """
+        return "git:" + ud.host + ud.path.replace('/', '.') + ud.branch
+
+    def _latest_revision(self, url, ud, d):
+        """
+        Compute the HEAD revision for the url
+        """
+        if ud.user:
+            username = ud.user + '@'
+        else:
+            username = ""
+
+        basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
+        cmd = "%s ls-remote %s://%s%s%s %s" % (basecmd, ud.proto, username, ud.host, ud.path, ud.branch)
+        output = runfetchcmd(cmd, d, True)
+        if not output:
+            raise bb.fetch.FetchError("Fetch command %s gave empty output\n" % (cmd))
+        return output.split()[0]
+
+    def _build_revision(self, url, ud, d):
+        return ud.tag
+
+    def _sortable_buildindex_disabled(self, url, ud, d, rev):
+        """
+        Return a suitable buildindex for the revision specified. This is done by counting revisions
+        using "git rev-list" which may or may not work in different circumstances.
+        """
+
+        cwd = os.getcwd()
+
+        # Check if we have the rev already
+
+        if not os.path.exists(ud.clonedir):
+            print("no repo")
+            self.go(None, ud, d)
+            if not os.path.exists(ud.clonedir):
+                logger.error("GIT repository for %s doesn't exist in %s, cannot get sortable buildnumber, using old value", url, ud.clonedir)
+                return None
+
+
+        os.chdir(ud.clonedir)
+        if not self._contains_ref(rev, d):
+            self.go(None, ud, d)
+
+        output = runfetchcmd("%s rev-list %s -- 2> /dev/null | wc -l" % (ud.basecmd, rev), d, quiet=True)
+        os.chdir(cwd)
+
+        buildindex = "%s" % output.split()[0]
+        logger.debug(1, "GIT repository for %s in %s is returning %s revisions in rev-list before %s", url, ud.clonedir, buildindex, rev)
+        return buildindex
diff --git a/bitbake/lib/bb/fetch2/hg.py b/bitbake/lib/bb/fetch2/hg.py
new file mode 100644
index 0000000..3c649a6
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/hg.py
@@ -0,0 +1,180 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' implementation for mercurial DRCS (hg).
+
+"""
+
+# Copyright (C) 2003, 2004  Chris Larson
+# Copyright (C) 2004        Marcin Juszkiewicz
+# Copyright (C) 2007        Robert Schuster
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# Based on functions from the base bb module, Copyright 2003 Holger Schurig
+
+import os
+import sys
+import logging
+import bb
+from bb import data
+from bb.fetch import Fetch
+from bb.fetch import FetchError
+from bb.fetch import MissingParameterError
+from bb.fetch import runfetchcmd
+from bb.fetch import logger
+
+class Hg(Fetch):
+    """Class to fetch from mercurial repositories"""
+    def supports(self, url, ud, d):
+        """
+        Check to see if a given url can be fetched with mercurial.
+        """
+        return ud.type in ['hg']
+
+    def forcefetch(self, url, ud, d):
+        revTag = ud.parm.get('rev', 'tip')
+        return revTag == "tip"
+
+    def localpath(self, url, ud, d):
+        if not "module" in ud.parm:
+            raise MissingParameterError("hg method needs a 'module' parameter")
+
+        ud.module = ud.parm["module"]
+
+        # Create paths to mercurial checkouts
+        relpath = self._strip_leading_slashes(ud.path)
+        ud.pkgdir = os.path.join(data.expand('${HGDIR}', d), ud.host, relpath)
+        ud.moddir = os.path.join(ud.pkgdir, ud.module)
+
+        if 'rev' in ud.parm:
+            ud.revision = ud.parm['rev']
+        else:
+            tag = Fetch.srcrev_internal_helper(ud, d)
+            if tag is True:
+                ud.revision = self.latest_revision(url, ud, d)
+            elif tag:
+                ud.revision = tag
+            else:
+                ud.revision = self.latest_revision(url, ud, d)
+
+        ud.localfile = data.expand('%s_%s_%s_%s.tar.gz' % (ud.module.replace('/', '.'), ud.host, ud.path.replace('/', '.'), ud.revision), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def _buildhgcommand(self, ud, d, command):
+        """
+        Build up an hg commandline based on ud
+        command is "fetch", "update", "info"
+        """
+
+        basecmd = data.expand('${FETCHCMD_hg}', d)
+
+        proto = ud.parm.get('proto', 'http')
+
+        host = ud.host
+        if proto == "file":
+            host = "/"
+            ud.host = "localhost"
+
+        if not ud.user:
+            hgroot = host + ud.path
+        else:
+            hgroot = ud.user + "@" + host + ud.path
+
+        if command is "info":
+            return "%s identify -i %s://%s/%s" % (basecmd, proto, hgroot, ud.module)
+
+        options = [];
+        if ud.revision:
+            options.append("-r %s" % ud.revision)
+
+        if command is "fetch":
+            cmd = "%s clone %s %s://%s/%s %s" % (basecmd, " ".join(options), proto, hgroot, ud.module, ud.module)
+        elif command is "pull":
+            # do not pass options list; limiting pull to rev causes the local
+            # repo not to contain it and immediately following "update" command
+            # will crash
+            cmd = "%s pull" % (basecmd)
+        elif command is "update":
+            cmd = "%s update -C %s" % (basecmd, " ".join(options))
+        else:
+            raise FetchError("Invalid hg command %s" % command)
+
+        return cmd
+
+    def go(self, loc, ud, d):
+        """Fetch url"""
+
+        logger.debug(2, "Fetch: checking for module directory '" + ud.moddir + "'")
+
+        if os.access(os.path.join(ud.moddir, '.hg'), os.R_OK):
+            updatecmd = self._buildhgcommand(ud, d, "pull")
+            logger.info("Update " + loc)
+            # update sources there
+            os.chdir(ud.moddir)
+            logger.debug(1, "Running %s", updatecmd)
+            runfetchcmd(updatecmd, d)
+
+        else:
+            fetchcmd = self._buildhgcommand(ud, d, "fetch")
+            logger.info("Fetch " + loc)
+            # check out sources there
+            bb.mkdirhier(ud.pkgdir)
+            os.chdir(ud.pkgdir)
+            logger.debug(1, "Running %s", fetchcmd)
+            runfetchcmd(fetchcmd, d)
+
+        # Even when we clone (fetch), we still need to update as hg's clone
+        # won't checkout the specified revision if its on a branch
+        updatecmd = self._buildhgcommand(ud, d, "update")
+        os.chdir(ud.moddir)
+        logger.debug(1, "Running %s", updatecmd)
+        runfetchcmd(updatecmd, d)
+
+        scmdata = ud.parm.get("scmdata", "")
+        if scmdata == "keep":
+            tar_flags = ""
+        else:
+            tar_flags = "--exclude '.hg' --exclude '.hgrags'"
+
+        os.chdir(ud.pkgdir)
+        try:
+            runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, ud.module), d)
+        except:
+            t, v, tb = sys.exc_info()
+            try:
+                os.unlink(ud.localpath)
+            except OSError:
+                pass
+            raise t, v, tb
+
+    def supports_srcrev(self):
+        return True
+
+    def _latest_revision(self, url, ud, d):
+        """
+        Compute tip revision for the url
+        """
+        output = runfetchcmd(self._buildhgcommand(ud, d, "info"), d)
+        return output.strip()
+
+    def _build_revision(self, url, ud, d):
+        return ud.revision
+
+    def _revision_key(self, url, ud, d):
+        """
+        Return a unique key for the url
+        """
+        return "hg:" + ud.moddir
diff --git a/bitbake/lib/bb/fetch2/local.py b/bitbake/lib/bb/fetch2/local.py
new file mode 100644
index 0000000..6aa9e45
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/local.py
@@ -0,0 +1,73 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' implementations
+
+Classes for obtaining upstream sources for the
+BitBake build tools.
+
+"""
+
+# Copyright (C) 2003, 2004  Chris Larson
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# Based on functions from the base bb module, Copyright 2003 Holger Schurig
+
+import os
+import bb
+import bb.utils
+from   bb import data
+from   bb.fetch import Fetch
+
+class Local(Fetch):
+    def supports(self, url, urldata, d):
+        """
+        Check to see if a given url represents a local fetch.
+        """
+        return urldata.type in ['file']
+
+    def localpath(self, url, urldata, d):
+        """
+        Return the local filename of a given url assuming a successful fetch.
+        """
+        path = url.split("://")[1]
+        path = path.split(";")[0]
+        newpath = path
+        if path[0] != "/":
+            filespath = data.getVar('FILESPATH', d, 1)
+            if filespath:
+                newpath = bb.utils.which(filespath, path)
+            if not newpath:
+                filesdir = data.getVar('FILESDIR', d, 1)
+                if filesdir:
+                    newpath = os.path.join(filesdir, path)
+        # We don't set localfile as for this fetcher the file is already local!
+        return newpath
+
+    def go(self, url, urldata, d):
+        """Fetch urls (no-op for Local method)"""
+        # no need to fetch local files, we'll deal with them in place.
+        return 1
+
+    def checkstatus(self, url, urldata, d):
+        """
+        Check the status of the url
+        """
+        if urldata.localpath.find("*") != -1:
+            logger.info("URL %s looks like a glob and was therefore not checked.", url)
+            return True
+        if os.path.exists(urldata.localpath):
+            return True
+        return False
diff --git a/bitbake/lib/bb/fetch2/osc.py b/bitbake/lib/bb/fetch2/osc.py
new file mode 100644
index 0000000..2682096
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/osc.py
@@ -0,0 +1,143 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+Bitbake "Fetch" implementation for osc (Opensuse build service client).
+Based on the svn "Fetch" implementation.
+
+"""
+
+import  os
+import  sys
+import logging
+import  bb
+from    bb       import data
+from    bb.fetch import Fetch
+from    bb.fetch import FetchError
+from    bb.fetch import MissingParameterError
+from    bb.fetch import runfetchcmd
+
+class Osc(Fetch):
+    """Class to fetch a module or modules from Opensuse build server
+       repositories."""
+
+    def supports(self, url, ud, d):
+        """
+        Check to see if a given url can be fetched with osc.
+        """
+        return ud.type in ['osc']
+
+    def localpath(self, url, ud, d):
+        if not "module" in ud.parm:
+            raise MissingParameterError("osc method needs a 'module' parameter.")
+
+        ud.module = ud.parm["module"]
+
+        # Create paths to osc checkouts
+        relpath = self._strip_leading_slashes(ud.path)
+        ud.pkgdir = os.path.join(data.expand('${OSCDIR}', d), ud.host)
+        ud.moddir = os.path.join(ud.pkgdir, relpath, ud.module)
+
+        if 'rev' in ud.parm:
+            ud.revision = ud.parm['rev']
+        else:
+            pv = data.getVar("PV", d, 0)
+            rev = Fetch.srcrev_internal_helper(ud, d)
+            if rev and rev != True:
+                ud.revision = rev
+            else:
+                ud.revision = ""
+
+        ud.localfile = data.expand('%s_%s_%s.tar.gz' % (ud.module.replace('/', '.'), ud.path.replace('/', '.'), ud.revision), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def _buildosccommand(self, ud, d, command):
+        """
+        Build up an ocs commandline based on ud
+        command is "fetch", "update", "info"
+        """
+
+        basecmd = data.expand('${FETCHCMD_osc}', d)
+
+        proto = ud.parm.get('proto', 'ocs')
+
+        options = []
+
+        config = "-c %s" % self.generate_config(ud, d)
+
+        if ud.revision:
+            options.append("-r %s" % ud.revision)
+
+        coroot = self._strip_leading_slashes(ud.path)
+
+        if command is "fetch":
+            osccmd = "%s %s co %s/%s %s" % (basecmd, config, coroot, ud.module, " ".join(options))
+        elif command is "update":
+            osccmd = "%s %s up %s" % (basecmd, config, " ".join(options))
+        else:
+            raise FetchError("Invalid osc command %s" % command)
+
+        return osccmd
+
+    def go(self, loc, ud, d):
+        """
+        Fetch url
+        """
+
+        logger.debug(2, "Fetch: checking for module directory '" + ud.moddir + "'")
+
+        if os.access(os.path.join(data.expand('${OSCDIR}', d), ud.path, ud.module), os.R_OK):
+            oscupdatecmd = self._buildosccommand(ud, d, "update")
+            logger.info("Update "+ loc)
+            # update sources there
+            os.chdir(ud.moddir)
+            logger.debug(1, "Running %s", oscupdatecmd)
+            runfetchcmd(oscupdatecmd, d)
+        else:
+            oscfetchcmd = self._buildosccommand(ud, d, "fetch")
+            logger.info("Fetch " + loc)
+            # check out sources there
+            bb.mkdirhier(ud.pkgdir)
+            os.chdir(ud.pkgdir)
+            logger.debug(1, "Running %s", oscfetchcmd)
+            runfetchcmd(oscfetchcmd, d)
+
+        os.chdir(os.path.join(ud.pkgdir + ud.path))
+        # tar them up to a defined filename
+        try:
+            runfetchcmd("tar -czf %s %s" % (ud.localpath, ud.module), d)
+        except:
+            t, v, tb = sys.exc_info()
+            try:
+                os.unlink(ud.localpath)
+            except OSError:
+                pass
+            raise t, v, tb
+
+    def supports_srcrev(self):
+        return False
+
+    def generate_config(self, ud, d):
+        """
+        Generate a .oscrc to be used for this run.
+        """
+
+        config_path = os.path.join(data.expand('${OSCDIR}', d), "oscrc")
+        if (os.path.exists(config_path)):
+            os.remove(config_path)
+
+        f = open(config_path, 'w')
+        f.write("[general]\n")
+        f.write("apisrv = %s\n" % ud.host)
+        f.write("scheme = http\n")
+        f.write("su-wrapper = su -c\n")
+        f.write("build-root = %s\n" % data.expand('${WORKDIR}', d))
+        f.write("urllist = http://moblin-obs.jf.intel.com:8888/build/%(project)s/%(repository)s/%(buildarch)s/:full/%(name)s.rpm\n")
+        f.write("extra-pkgs = gzip\n")
+        f.write("\n")
+        f.write("[%s]\n" % ud.host)
+        f.write("user = %s\n" % ud.parm["user"])
+        f.write("pass = %s\n" % ud.parm["pswd"])
+        f.close()
+
+        return config_path
diff --git a/bitbake/lib/bb/fetch2/perforce.py b/bitbake/lib/bb/fetch2/perforce.py
new file mode 100644
index 0000000..222ed7e
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/perforce.py
@@ -0,0 +1,206 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' implementations
+
+Classes for obtaining upstream sources for the
+BitBake build tools.
+
+"""
+
+# Copyright (C) 2003, 2004  Chris Larson
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# Based on functions from the base bb module, Copyright 2003 Holger Schurig
+
+from future_builtins import zip
+import os
+import logging
+import bb
+from   bb import data
+from   bb.fetch import Fetch
+from   bb.fetch import FetchError
+from   bb.fetch import logger
+
+class Perforce(Fetch):
+    def supports(self, url, ud, d):
+        return ud.type in ['p4']
+
+    def doparse(url, d):
+        parm = {}
+        path = url.split("://")[1]
+        delim = path.find("@");
+        if delim != -1:
+            (user, pswd, host, port) = path.split('@')[0].split(":")
+            path = path.split('@')[1]
+        else:
+            (host, port) = data.getVar('P4PORT', d).split(':')
+            user = ""
+            pswd = ""
+
+        if path.find(";") != -1:
+            keys=[]
+            values=[]
+            plist = path.split(';')
+            for item in plist:
+                if item.count('='):
+                    (key, value) = item.split('=')
+                    keys.append(key)
+                    values.append(value)
+
+            parm = dict(zip(keys, values))
+        path = "//" + path.split(';')[0]
+        host += ":%s" % (port)
+        parm["cset"] = Perforce.getcset(d, path, host, user, pswd, parm)
+
+        return host, path, user, pswd, parm
+    doparse = staticmethod(doparse)
+
+    def getcset(d, depot, host, user, pswd, parm):
+        p4opt = ""
+        if "cset" in parm:
+            return parm["cset"];
+        if user:
+            p4opt += " -u %s" % (user)
+        if pswd:
+            p4opt += " -P %s" % (pswd)
+        if host:
+            p4opt += " -p %s" % (host)
+
+        p4date = data.getVar("P4DATE", d, 1)
+        if "revision" in parm:
+            depot += "#%s" % (parm["revision"])
+        elif "label" in parm:
+            depot += "@%s" % (parm["label"])
+        elif p4date:
+            depot += "@%s" % (p4date)
+
+        p4cmd = data.getVar('FETCHCOMMAND_p4', d, 1)
+        logger.debug(1, "Running %s%s changes -m 1 %s", p4cmd, p4opt, depot)
+        p4file = os.popen("%s%s changes -m 1 %s" % (p4cmd, p4opt, depot))
+        cset = p4file.readline().strip()
+        logger.debug(1, "READ %s", cset)
+        if not cset:
+            return -1
+
+        return cset.split(' ')[1]
+    getcset = staticmethod(getcset)
+
+    def localpath(self, url, ud, d):
+
+        (host, path, user, pswd, parm) = Perforce.doparse(url, d)
+
+        # If a label is specified, we use that as our filename
+
+        if "label" in parm:
+            ud.localfile = "%s.tar.gz" % (parm["label"])
+            return os.path.join(data.getVar("DL_DIR", d, 1), ud.localfile)
+
+        base = path
+        which = path.find('/...')
+        if which != -1:
+            base = path[:which]
+
+        base = self._strip_leading_slashes(base)
+
+        cset = Perforce.getcset(d, path, host, user, pswd, parm)
+
+        ud.localfile = data.expand('%s+%s+%s.tar.gz' % (host, base.replace('/', '.'), cset), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, 1), ud.localfile)
+
+    def go(self, loc, ud, d):
+        """
+        Fetch urls
+        """
+
+        (host, depot, user, pswd, parm) = Perforce.doparse(loc, d)
+
+        if depot.find('/...') != -1:
+            path = depot[:depot.find('/...')]
+        else:
+            path = depot
+
+        module = parm.get('module', os.path.basename(path))
+
+        localdata = data.createCopy(d)
+        data.setVar('OVERRIDES', "p4:%s" % data.getVar('OVERRIDES', localdata), localdata)
+        data.update_data(localdata)
+
+        # Get the p4 command
+        p4opt = ""
+        if user:
+            p4opt += " -u %s" % (user)
+
+        if pswd:
+            p4opt += " -P %s" % (pswd)
+
+        if host:
+            p4opt += " -p %s" % (host)
+
+        p4cmd = data.getVar('FETCHCOMMAND', localdata, 1)
+
+        # create temp directory
+        logger.debug(2, "Fetch: creating temporary directory")
+        bb.mkdirhier(data.expand('${WORKDIR}', localdata))
+        data.setVar('TMPBASE', data.expand('${WORKDIR}/oep4.XXXXXX', localdata), localdata)
+        tmppipe = os.popen(data.getVar('MKTEMPDIRCMD', localdata, 1) or "false")
+        tmpfile = tmppipe.readline().strip()
+        if not tmpfile:
+            logger.error("Fetch: unable to create temporary directory.. make sure 'mktemp' is in the PATH.")
+            raise FetchError(module)
+
+        if "label" in parm:
+            depot = "%s@%s" % (depot, parm["label"])
+        else:
+            cset = Perforce.getcset(d, depot, host, user, pswd, parm)
+            depot = "%s@%s" % (depot, cset)
+
+        os.chdir(tmpfile)
+        logger.info("Fetch " + loc)
+        logger.info("%s%s files %s", p4cmd, p4opt, depot)
+        p4file = os.popen("%s%s files %s" % (p4cmd, p4opt, depot))
+
+        if not p4file:
+            logger.error("Fetch: unable to get the P4 files from %s", depot)
+            raise FetchError(module)
+
+        count = 0
+
+        for file in p4file:
+            list = file.split()
+
+            if list[2] == "delete":
+                continue
+
+            dest = list[0][len(path)+1:]
+            where = dest.find("#")
+
+            os.system("%s%s print -o %s/%s %s" % (p4cmd, p4opt, module, dest[:where], list[0]))
+            count = count + 1
+
+        if count == 0:
+            logger.error("Fetch:  No files gathered from the P4 fetch")
+            raise FetchError(module)
+
+        myret = os.system("tar -czf %s %s" % (ud.localpath, module))
+        if myret != 0:
+            try:
+                os.unlink(ud.localpath)
+            except OSError:
+                pass
+            raise FetchError(module)
+        # cleanup
+        bb.utils.prunedir(tmpfile)
diff --git a/bitbake/lib/bb/fetch2/repo.py b/bitbake/lib/bb/fetch2/repo.py
new file mode 100644
index 0000000..03642e7
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/repo.py
@@ -0,0 +1,98 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake "Fetch" repo (git) implementation
+
+"""
+
+# Copyright (C) 2009 Tom Rini <trini@embeddedalley.com>
+#
+# Based on git.py which is:
+#Copyright (C) 2005 Richard Purdie
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+import os
+import bb
+from   bb    import data
+from   bb.fetch import Fetch
+from   bb.fetch import runfetchcmd
+
+class Repo(Fetch):
+    """Class to fetch a module or modules from repo (git) repositories"""
+    def supports(self, url, ud, d):
+        """
+        Check to see if a given url can be fetched with repo.
+        """
+        return ud.type in ["repo"]
+
+    def localpath(self, url, ud, d):
+        """
+        We don"t care about the git rev of the manifests repository, but
+        we do care about the manifest to use.  The default is "default".
+        We also care about the branch or tag to be used.  The default is
+        "master".
+        """
+
+        ud.proto = ud.parm.get('protocol', 'git')
+        ud.branch = ud.parm.get('branch', 'master')
+        ud.manifest = ud.parm.get('manifest', 'default.xml')
+        if not ud.manifest.endswith('.xml'):
+            ud.manifest += '.xml'
+
+        ud.localfile = data.expand("repo_%s%s_%s_%s.tar.gz" % (ud.host, ud.path.replace("/", "."), ud.manifest, ud.branch), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def go(self, loc, ud, d):
+        """Fetch url"""
+
+        if os.access(os.path.join(data.getVar("DL_DIR", d, True), ud.localfile), os.R_OK):
+            logger.debug(1, "%s already exists (or was stashed). Skipping repo init / sync.", ud.localpath)
+            return
+
+        gitsrcname = "%s%s" % (ud.host, ud.path.replace("/", "."))
+        repodir = data.getVar("REPODIR", d, True) or os.path.join(data.getVar("DL_DIR", d, True), "repo")
+        codir = os.path.join(repodir, gitsrcname, ud.manifest)
+
+        if ud.user:
+            username = ud.user + "@"
+        else:
+            username = ""
+
+        bb.mkdirhier(os.path.join(codir, "repo"))
+        os.chdir(os.path.join(codir, "repo"))
+        if not os.path.exists(os.path.join(codir, "repo", ".repo")):
+            runfetchcmd("repo init -m %s -b %s -u %s://%s%s%s" % (ud.manifest, ud.branch, ud.proto, username, ud.host, ud.path), d)
+
+        runfetchcmd("repo sync", d)
+        os.chdir(codir)
+
+        scmdata = ud.parm.get("scmdata", "")
+        if scmdata == "keep":
+            tar_flags = ""
+        else:
+            tar_flags = "--exclude '.repo' --exclude '.git'"
+
+        # Create a cache
+        runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, os.path.join(".", "*") ), d)
+
+    def supports_srcrev(self):
+        return False
+
+    def _build_revision(self, url, ud, d):
+        return ud.manifest
+
+    def _want_sortable_revision(self, url, ud, d):
+        return False
diff --git a/bitbake/lib/bb/fetch2/ssh.py b/bitbake/lib/bb/fetch2/ssh.py
new file mode 100644
index 0000000..86c76f4
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/ssh.py
@@ -0,0 +1,118 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+'''
+BitBake 'Fetch' implementations
+
+This implementation is for Secure Shell (SSH), and attempts to comply with the
+IETF secsh internet draft:
+    http://tools.ietf.org/wg/secsh/draft-ietf-secsh-scp-sftp-ssh-uri/
+
+    Currently does not support the sftp parameters, as this uses scp
+    Also does not support the 'fingerprint' connection parameter.
+
+'''
+
+# Copyright (C) 2006  OpenedHand Ltd.
+#
+#
+# Based in part on svk.py:
+#    Copyright (C) 2006 Holger Hans Peter Freyther
+#    Based on svn.py:
+#        Copyright (C) 2003, 2004  Chris Larson
+#        Based on functions from the base bb module:
+#            Copyright 2003 Holger Schurig
+#
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+import re, os
+from   bb import data
+from   bb.fetch import Fetch
+from   bb.fetch import FetchError
+
+
+__pattern__ = re.compile(r'''
+ \s*                 # Skip leading whitespace
+ ssh://              # scheme
+ (                   # Optional username/password block
+  (?P<user>\S+)      # username
+  (:(?P<pass>\S+))?  # colon followed by the password (optional)
+ )?
+ (?P<cparam>(;[^;]+)*)?  # connection parameters block (optional)
+ @
+ (?P<host>\S+?)          # non-greedy match of the host
+ (:(?P<port>[0-9]+))?    # colon followed by the port (optional)
+ /
+ (?P<path>[^;]+)         # path on the remote system, may be absolute or relative,
+                         # and may include the use of '~' to reference the remote home
+                         # directory
+ (?P<sparam>(;[^;]+)*)?  # parameters block (optional)
+ $
+''', re.VERBOSE)
+
+class SSH(Fetch):
+    '''Class to fetch a module or modules via Secure Shell'''
+
+    def supports(self, url, urldata, d):
+        return __pattern__.match(url) != None
+
+    def localpath(self, url, urldata, d):
+        m = __pattern__.match(url)
+        path = m.group('path')
+        host = m.group('host')
+        lpath = os.path.join(data.getVar('DL_DIR', d, True), host, os.path.basename(path))
+        return lpath
+
+    def go(self, url, urldata, d):
+        dldir = data.getVar('DL_DIR', d, 1)
+
+        m = __pattern__.match(url)
+        path = m.group('path')
+        host = m.group('host')
+        port = m.group('port')
+        user = m.group('user')
+        password = m.group('pass')
+
+        ldir = os.path.join(dldir, host)
+        lpath = os.path.join(ldir, os.path.basename(path))
+
+        if not os.path.exists(ldir):
+            os.makedirs(ldir)
+
+        if port:
+            port = '-P %s' % port
+        else:
+            port = ''
+
+        if user:
+            fr = user
+            if password:
+                fr += ':%s' % password
+            fr += '@%s' % host
+        else:
+            fr = host
+        fr += ':%s' % path
+
+
+        import commands
+        cmd = 'scp -B -r %s %s %s/' % (
+            port,
+            commands.mkarg(fr),
+            commands.mkarg(ldir)
+        )
+
+        (exitstatus, output) = commands.getstatusoutput(cmd)
+        if exitstatus != 0:
+            print(output)
+            raise FetchError('Unable to fetch %s' % url)
diff --git a/bitbake/lib/bb/fetch2/svk.py b/bitbake/lib/bb/fetch2/svk.py
new file mode 100644
index 0000000..595a9da
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/svk.py
@@ -0,0 +1,104 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' implementations
+
+This implementation is for svk. It is based on the svn implementation
+
+"""
+
+# Copyright (C) 2006 Holger Hans Peter Freyther
+# Copyright (C) 2003, 2004  Chris Larson
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# Based on functions from the base bb module, Copyright 2003 Holger Schurig
+
+import os
+import logging
+import bb
+from   bb import data
+from   bb.fetch import Fetch
+from   bb.fetch import FetchError
+from   bb.fetch import MissingParameterError
+from   bb.fetch import logger
+
+class Svk(Fetch):
+    """Class to fetch a module or modules from svk repositories"""
+    def supports(self, url, ud, d):
+        """
+        Check to see if a given url can be fetched with svk.
+        """
+        return ud.type in ['svk']
+
+    def localpath(self, url, ud, d):
+        if not "module" in ud.parm:
+            raise MissingParameterError("svk method needs a 'module' parameter")
+        else:
+            ud.module = ud.parm["module"]
+
+        ud.revision = ud.parm.get('rev', "")
+
+        ud.localfile = data.expand('%s_%s_%s_%s_%s.tar.gz' % (ud.module.replace('/', '.'), ud.host, ud.path.replace('/', '.'), ud.revision, ud.date), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def forcefetch(self, url, ud, d):
+        return ud.date == "now"
+
+    def go(self, loc, ud, d):
+        """Fetch urls"""
+
+        svkroot = ud.host + ud.path
+
+        svkcmd = "svk co -r {%s} %s/%s" % (ud.date, svkroot, ud.module)
+
+        if ud.revision:
+            svkcmd = "svk co -r %s %s/%s" % (ud.revision, svkroot, ud.module)
+
+        # create temp directory
+        localdata = data.createCopy(d)
+        data.update_data(localdata)
+        logger.debug(2, "Fetch: creating temporary directory")
+        bb.mkdirhier(data.expand('${WORKDIR}', localdata))
+        data.setVar('TMPBASE', data.expand('${WORKDIR}/oesvk.XXXXXX', localdata), localdata)
+        tmppipe = os.popen(data.getVar('MKTEMPDIRCMD', localdata, 1) or "false")
+        tmpfile = tmppipe.readline().strip()
+        if not tmpfile:
+            logger.error("Fetch: unable to create temporary directory.. make sure 'mktemp' is in the PATH.")
+            raise FetchError(ud.module)
+
+        # check out sources there
+        os.chdir(tmpfile)
+        logger.info("Fetch " + loc)
+        logger.debug(1, "Running %s", svkcmd)
+        myret = os.system(svkcmd)
+        if myret != 0:
+            try:
+                os.rmdir(tmpfile)
+            except OSError:
+                pass
+            raise FetchError(ud.module)
+
+        os.chdir(os.path.join(tmpfile, os.path.dirname(ud.module)))
+        # tar them up to a defined filename
+        myret = os.system("tar -czf %s %s" % (ud.localpath, os.path.basename(ud.module)))
+        if myret != 0:
+            try:
+                os.unlink(ud.localpath)
+            except OSError:
+                pass
+            raise FetchError(ud.module)
+        # cleanup
+        bb.utils.prunedir(tmpfile)
diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
new file mode 100644
index 0000000..8f053ab
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -0,0 +1,204 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' implementation for svn.
+
+"""
+
+# Copyright (C) 2003, 2004  Chris Larson
+# Copyright (C) 2004        Marcin Juszkiewicz
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# Based on functions from the base bb module, Copyright 2003 Holger Schurig
+
+import os
+import sys
+import logging
+import bb
+from   bb import data
+from   bb.fetch import Fetch
+from   bb.fetch import FetchError
+from   bb.fetch import MissingParameterError
+from   bb.fetch import runfetchcmd
+from   bb.fetch import logger
+
+class Svn(Fetch):
+    """Class to fetch a module or modules from svn repositories"""
+    def supports(self, url, ud, d):
+        """
+        Check to see if a given url can be fetched with svn.
+        """
+        return ud.type in ['svn']
+
+    def localpath(self, url, ud, d):
+        if not "module" in ud.parm:
+            raise MissingParameterError("svn method needs a 'module' parameter")
+
+        ud.module = ud.parm["module"]
+
+        # Create paths to svn checkouts
+        relpath = self._strip_leading_slashes(ud.path)
+        ud.pkgdir = os.path.join(data.expand('${SVNDIR}', d), ud.host, relpath)
+        ud.moddir = os.path.join(ud.pkgdir, ud.module)
+
+        if 'rev' in ud.parm:
+            ud.date = ""
+            ud.revision = ud.parm['rev']
+        elif 'date' in ud.date:
+            ud.date = ud.parm['date']
+            ud.revision = ""
+        else:
+            #
+            # ***Nasty hack***
+            # If DATE in unexpanded PV, use ud.date (which is set from SRCDATE)
+            # Should warn people to switch to SRCREV here
+            #
+            pv = data.getVar("PV", d, 0)
+            if "DATE" in pv:
+                ud.revision = ""
+            else:
+                rev = Fetch.srcrev_internal_helper(ud, d)
+                if rev is True:
+                    ud.revision = self.latest_revision(url, ud, d)
+                    ud.date = ""
+                elif rev:
+                    ud.revision = rev
+                    ud.date = ""
+                else:
+                    ud.revision = ""
+
+        ud.localfile = data.expand('%s_%s_%s_%s_%s.tar.gz' % (ud.module.replace('/', '.'), ud.host, ud.path.replace('/', '.'), ud.revision, ud.date), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def _buildsvncommand(self, ud, d, command):
+        """
+        Build up an svn commandline based on ud
+        command is "fetch", "update", "info"
+        """
+
+        basecmd = data.expand('${FETCHCMD_svn}', d)
+
+        proto = ud.parm.get('proto', 'svn')
+
+        svn_rsh = None
+        if proto == "svn+ssh" and "rsh" in ud.parm:
+            svn_rsh = ud.parm["rsh"]
+
+        svnroot = ud.host + ud.path
+
+        # either use the revision, or SRCDATE in braces,
+        options = []
+
+        if ud.user:
+            options.append("--username %s" % ud.user)
+
+        if ud.pswd:
+            options.append("--password %s" % ud.pswd)
+
+        if command is "info":
+            svncmd = "%s info %s %s://%s/%s/" % (basecmd, " ".join(options), proto, svnroot, ud.module)
+        else:
+            suffix = ""
+            if ud.revision:
+                options.append("-r %s" % ud.revision)
+                suffix = "@%s" % (ud.revision)
+            elif ud.date:
+                options.append("-r {%s}" % ud.date)
+
+            if command is "fetch":
+                svncmd = "%s co %s %s://%s/%s%s %s" % (basecmd, " ".join(options), proto, svnroot, ud.module, suffix, ud.module)
+            elif command is "update":
+                svncmd = "%s update %s" % (basecmd, " ".join(options))
+            else:
+                raise FetchError("Invalid svn command %s" % command)
+
+        if svn_rsh:
+            svncmd = "svn_RSH=\"%s\" %s" % (svn_rsh, svncmd)
+
+        return svncmd
+
+    def go(self, loc, ud, d):
+        """Fetch url"""
+
+        logger.debug(2, "Fetch: checking for module directory '" + ud.moddir + "'")
+
+        if os.access(os.path.join(ud.moddir, '.svn'), os.R_OK):
+            svnupdatecmd = self._buildsvncommand(ud, d, "update")
+            logger.info("Update " + loc)
+            # update sources there
+            os.chdir(ud.moddir)
+            logger.debug(1, "Running %s", svnupdatecmd)
+            runfetchcmd(svnupdatecmd, d)
+        else:
+            svnfetchcmd = self._buildsvncommand(ud, d, "fetch")
+            logger.info("Fetch " + loc)
+            # check out sources there
+            bb.mkdirhier(ud.pkgdir)
+            os.chdir(ud.pkgdir)
+            logger.debug(1, "Running %s", svnfetchcmd)
+            runfetchcmd(svnfetchcmd, d)
+
+        scmdata = ud.parm.get("scmdata", "")
+        if scmdata == "keep":
+            tar_flags = ""
+        else:
+            tar_flags = "--exclude '.svn'"
+
+        os.chdir(ud.pkgdir)
+        # tar them up to a defined filename
+        try:
+            runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, ud.module), d)
+        except:
+            t, v, tb = sys.exc_info()
+            try:
+                os.unlink(ud.localpath)
+            except OSError:
+                pass
+            raise t, v, tb
+
+    def supports_srcrev(self):
+        return True
+
+    def _revision_key(self, url, ud, d):
+        """
+        Return a unique key for the url
+        """
+        return "svn:" + ud.moddir
+
+    def _latest_revision(self, url, ud, d):
+        """
+        Return the latest upstream revision number
+        """
+        logger.debug(2, "SVN fetcher hitting network for %s", url)
+
+        output = runfetchcmd("LANG=C LC_ALL=C " + self._buildsvncommand(ud, d, "info"), d, True)
+
+        revision = None
+        for line in output.splitlines():
+            if "Last Changed Rev" in line:
+                revision = line.split(":")[1].strip()
+
+        return revision
+
+    def _sortable_revision(self, url, ud, d):
+        """
+        Return a sortable revision number which in our case is the revision number
+        """
+
+        return self._build_revision(url, ud, d)
+
+    def _build_revision(self, url, ud, d):
+        return ud.revision
diff --git a/bitbake/lib/bb/fetch2/wget.py b/bitbake/lib/bb/fetch2/wget.py
new file mode 100644
index 0000000..4d4bdfd
--- /dev/null
+++ b/bitbake/lib/bb/fetch2/wget.py
@@ -0,0 +1,93 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+"""
+BitBake 'Fetch' implementations
+
+Classes for obtaining upstream sources for the
+BitBake build tools.
+
+"""
+
+# Copyright (C) 2003, 2004  Chris Larson
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# Based on functions from the base bb module, Copyright 2003 Holger Schurig
+
+import os
+import logging
+import bb
+import urllib
+from   bb import data
+from   bb.fetch import Fetch, FetchError, encodeurl, decodeurl, logger, runfetchcmd
+
+class Wget(Fetch):
+    """Class to fetch urls via 'wget'"""
+    def supports(self, url, ud, d):
+        """
+        Check to see if a given url can be fetched with wget.
+        """
+        return ud.type in ['http', 'https', 'ftp']
+
+    def localpath(self, url, ud, d):
+
+        url = encodeurl([ud.type, ud.host, ud.path, ud.user, ud.pswd, {}])
+        ud.basename = os.path.basename(ud.path)
+        ud.localfile = data.expand(urllib.unquote(ud.basename), d)
+
+        return os.path.join(data.getVar("DL_DIR", d, True), ud.localfile)
+
+    def go(self, uri, ud, d, checkonly = False):
+        """Fetch urls"""
+
+        def fetch_uri(uri, ud, d):
+            if checkonly:
+                fetchcmd = data.getVar("CHECKCOMMAND", d, 1)
+            elif os.path.exists(ud.localpath):
+                # file exists, but we didnt complete it.. trying again..
+                fetchcmd = data.getVar("RESUMECOMMAND", d, 1)
+            else:
+                fetchcmd = data.getVar("FETCHCOMMAND", d, 1)
+
+            uri = uri.split(";")[0]
+            uri_decoded = list(decodeurl(uri))
+            uri_type = uri_decoded[0]
+            uri_host = uri_decoded[1]
+
+            fetchcmd = fetchcmd.replace("${URI}", uri.split(";")[0])
+            fetchcmd = fetchcmd.replace("${FILE}", ud.basename)
+            logger.info("fetch " + uri)
+            logger.debug(2, "executing " + fetchcmd)
+            runfetchcmd(fetchcmd, d)
+
+            # Sanity check since wget can pretend it succeed when it didn't
+            # Also, this used to happen if sourceforge sent us to the mirror page
+            if not os.path.exists(ud.localpath) and not checkonly:
+                logger.debug(2, "The fetch command for %s returned success but %s doesn't exist?...", uri, ud.localpath)
+                return False
+
+            return True
+
+        localdata = data.createCopy(d)
+        data.setVar('OVERRIDES', "wget:" + data.getVar('OVERRIDES', localdata), localdata)
+        data.update_data(localdata)
+
+        if fetch_uri(uri, ud, localdata):
+            return True
+
+        raise FetchError(uri)
+
+
+    def checkstatus(self, uri, ud, d):
+        return self.go(uri, ud, d, True)
-- 
1.7.0.4


