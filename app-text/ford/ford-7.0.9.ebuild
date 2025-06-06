# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi toolchain-funcs

MY_PN="FORD"
DESCRIPTION="FORD, automatic documentation generator for modern Fortran programs"
HOMEPAGE="https://github.com/Fortran-FOSS-Programmers/ford"
SRC_URI="$(pypi_sdist_url "${PN^}" "${PV}")"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/beautifulsoup4[${PYTHON_USEDEP}]
	>=dev-python/graphviz-0.20[${PYTHON_USEDEP}]
	dev-python/jinja2[${PYTHON_USEDEP}]
	>=dev-python/markdown-3.4[${PYTHON_USEDEP}]
	>=dev-python/markdown-include-0.8.1[${PYTHON_USEDEP}]
	>=dev-python/pygments-2.12.0[${PYTHON_USEDEP}]
	dev-python/python-markdown-math[${PYTHON_USEDEP}]
	>=dev-python/rich-12.0.0
	>=dev-python/toposort-1.7[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.64.0[${PYTHON_USEDEP}]
	>=dev-util/pcpp-1.30
	test? ( dev-python/tomli-w )
"
DEPEND="${RDEPEND}"

DOCS=( CHANGELOG.md README.md )

distutils_enable_tests pytest

src_prepare() {
	default
	sed -i -e 's/"cpp /"'"$(tc-getCPP)"' /' ford/__init__.py || die # bug: 839300
}
