void str_mov(char *src_str, size_t s, size_t length,
char *dst_str, size_t d)
{
while(s < length && src_str[s] != '\0') {
dst_str[d] = src_str[s];
d++;
s++;
}
}
