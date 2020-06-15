/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_memccpy.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: nsalle <nsalle@student.le-101.fr>          +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/03 14:14:18 by jde-la-m     #+#   ##    ##    #+#       */
/*   Updated: 2019/04/12 11:03:06 by nsalle      ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

/*
**		DESCRIPTION
**	The ft_memccpy() function copies no more than n bytes from memory area src
**	to memory area dest, stopping when the character c is found.
**	If the memory areas overlap, the results are undefined.
**
**		RETURN VALUE
**	The ft_memccpy() function returns a pointer to the next character in
**	dest after c, or NULL if c was not found in the first n characters of src.
*/

#include "libft.h"

void	*ft_memccpy(void *dest, const void *src, int c, size_t n)
{
	char		*dp;
	const char	*sp;

	dp = (char*)dest;
	sp = (const char*)src;
	while (n--)
	{
		if ((*dp++ = *sp++) == (char)c)
			return ((void *)dp);
	}
	return (NULL);
}
