
EAPI=8

inherit cmake

DESCRIPTION="SOCI - The C++ Database Access Library"
HOMEPAGE="https://sourceforge.net/projects/soci/"
SRC_URI="https://sourceforge.net/projects/soci/files/soci/${P}/${P}.tar.gz/download -> ${P}.tar.gz"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="odbc sqlite oracle postgres mysql +shared +static test ubsan lto cxx11"
REQUIRED_USE="|| ( shared static )"
RESTRICT="!test? ( test )"

CMAKE_SKIP_TESTS=(
	soci_odbc_test_mssql
	soci_odbc_test_mssql_static
	soci_odbc_test_mysql
	soci_odbc_test_mysql_static
	soci_odbc_test_postgresql
	soci_odbc_test_postgresql_static
	soci_postgresql_test
	soci_postgresql_test_static
	soci_mysql_test
	soci_mysql_test_static
)

RDEPEND="
	>=dev-libs/boost-1.85.0-r1
	odbc? ( dev-db/unixODBC )
	sqlite? ( dev-db/sqlite )
	oracle? ( dev-db/oracle-instantclient[sdk] )
	postgres? ( dev-db/postgresql )
	mysql? ( dev-db/mysql )
"
DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		-DSOCI_SHARED="$(usex shared)"
		-DSOCI_STATIC="$(usex static)"
		-DSOCI_TESTS="$(usex test)"
		-DSOCI_UBSAN="$(usex ubsan)"
		-DSOCI_LTO="$(usex lto)"
		-DSOCI_CXX11="$(usex cxx11)"
	)
	cmake_src_configure
}
