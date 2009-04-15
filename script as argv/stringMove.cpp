void str_mov(char *src_str, size_t s, size_t length,
char *dst_str, size_t d)
{
while(s < length && src_str[s] != '\0') {
dst_str[d] = src_str[s];
d++;
s++;
}
}


void str_mov(char *src_str, size_t s, size_t length, char *dst_str) // s = start position
{
while(s < length && dst_str[s] != '\0') {
dst_str[s] = src_str[s];
s++;
};
}
replaced *char = "MsgBox, replaced";
