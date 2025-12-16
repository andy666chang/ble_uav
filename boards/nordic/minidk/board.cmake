# SPDX-License-Identifier: Apache-2.0

# 設定 pyOCD 參數：指定目標晶片與通訊頻率
# pyOCD 會自動偵測 CMSIS-DAP 介面，通常不需額外參數
board_runner_args(pyocd "--target=nrf52832" "--frequency=4000000")

# 將 pyOCD 設為此開發板的預設燒錄器
set(BOARD_FLASH_RUNNER pyocd)
set(BOARD_DEBUG_RUNNER pyocd)

# 包含 pyOCD 的支援腳本 (順序建議放在前面)
include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)

# 保留其他備援 runner (選填)
include(${ZEPHYR_BASE}/boards/common/nrfjprog.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
include(${ZEPHYR_BASE}/boards/common/openocd.board.cmake)

