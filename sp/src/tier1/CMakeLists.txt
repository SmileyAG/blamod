# 
# Copyright 2016 - 2017 Nesterov A.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http ://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_directories(
	"../common"
	"../public"
	"../public/tier1"
	"../public/tier0"
)

add_definitions(
	"-D_HAS_ITERATOR_DEBUGGING=0"
	"-D_CRT_SECURE_NO_WARNINGS"
)

add_library(tier1 STATIC
	bitbuf.cpp
	byteswap.cpp
	characterset.cpp
	checksum_crc.cpp
	checksum_md5.cpp
	checksum_sha1.cpp
	commandbuffer.cpp
	convar.cpp
	datamanager.cpp
	diff.cpp
	generichash.cpp
	ilocalize.cpp
	interface.cpp
	KeyValues.cpp
	kvpacker.cpp
	mempool.cpp
	memstack.cpp
	NetAdr.cpp
	newbitbuf.cpp
	pathmatch.cpp
	processor_detect.cpp
	rangecheckedvar.cpp
	reliabletimer.cpp
	snappy.cpp
	sparsematrix.cpp
	splitstring.cpp
	stringpool.cpp
	strtools.cpp
	tier1.cpp
	tokenreader.cpp
	uniqueid.cpp
	utlbuffer.cpp
	utlbufferutil.cpp
	utlstring.cpp
	utlsymbol.cpp
	
	../public/tier1/bitbuf.h
	../public/tier1/byteswap.h
	../public/tier1/callqueue.h
	../public/tier1/characterset.h
	../public/tier1/checksum_crc.h
	../public/tier1/checksum_md5.h
	../public/tier1/checksum_sha1.h
	../public/tier1/CommandBuffer.h
	../public/tier1/convar.h
	../public/tier1/datamanager.h
	../public/datamap.h
	../public/tier1/delegates.h
	../public/tier1/diff.h
	../public/tier1/fmtstr.h
	../public/tier1/functors.h
	../public/tier1/generichash.h
	../public/tier1/iconvar.h
	../public/tier1/ilocalize.h
	../public/tier1/interface.h
	../public/tier1/KeyValues.h
	../public/tier1/kvpacker.h
	../public/tier1/lzmaDecoder.h
	../public/tier1/lzss.h
	../public/tier1/mempool.h
	../public/tier1/memstack.h
	../public/tier1/netadr.h
	../public/tier1/processor_detect.h
	../public/tier1/rangecheckedvar.h
	../public/tier1/refcount.h
	../public/tier1/smartptr.h
	../public/tier1/snappy-sinksource.h
	../public/tier1/snappy.h
	../public/tier1/stringpool.h
	../public/tier1/strtools.h
	../public/tier1/tier1.h
	../public/tier1/tokenreader.h
	../public/tier1/uniqueid.h
	../public/tier1/utlbidirectionalset.h
	../public/tier1/utlblockmemory.h
	../public/tier1/utlbuffer.h
	../public/tier1/utlbufferutil.h
	../public/tier1/utlcommon.h
	../public/tier1/utldict.h
	../public/tier1/utlenvelope.h
	../public/tier1/utlfixedmemory.h
	../public/tier1/utlhandletable.h
	../public/tier1/utlhash.h
	../public/tier1/utlhashtable.h
	../public/tier1/utllinkedlist.h
	../public/tier1/utlmap.h
	../public/tier1/utlmemory.h
	../public/tier1/utlmultilist.h
	../public/tier1/utlpriorityqueue.h
	../public/tier1/utlqueue.h
	../public/tier1/utlrbtree.h
	../public/tier1/UtlSortVector.h
	../public/tier1/utlstack.h
	../public/tier1/utlstring.h
	../public/tier1/UtlStringMap.h
	../public/tier1/utlsymbol.h
	../public/tier1/utlsymbollarge.h
	../public/tier1/utlvector.h
	../common/xbox/xboxstubs.h
	snappy-internal.h
	snappy-stubs-internal.h
)

if (MSVC)
	target_link_libraries(tier1
		"Rpcrt4.lib" "odbccp32.lib"
	)
endif()

