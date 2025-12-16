/*
 * Copyright (c) 2016 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
#include <zephyr/kernel.h>


int main(void)
{
    printf("Board: %s\n", CONFIG_BOARD);
    printf("Target: %s\n", CONFIG_BOARD_TARGET);

	return 0;
}
