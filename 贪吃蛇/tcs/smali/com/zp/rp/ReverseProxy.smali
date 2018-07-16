.class public Lcom/zp/rp/ReverseProxy;
.super Ljava/lang/Object;
.source "ReverseProxy.java"


# static fields
.field public static debug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/nio/channels/Channel;)V
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/Channel;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/nio/channels/Selector;)V
    .locals 1
    .param p0, "selector"    # Ljava/nio/channels/Selector;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static inspect(Ljava/lang/String;[BI)V
    .locals 1
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/zp/rp/ReverseProxy;->inspect(Ljava/util/Date;Ljava/lang/String;[BI)V

    .line 71
    return-void
.end method

.method public static inspect(Ljava/util/Date;Ljava/lang/String;[BI)V
    .locals 12
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "mode"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v10, "\n>-----------------------------------------------------------------------------<\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 78
    .local v1, "calendar":Ljava/util/Calendar;
    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 81
    :cond_0
    const/16 v10, 0x5b

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 82
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0xd

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0xe

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v10, "\nsize: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    if-eqz p2, :cond_1

    .line 90
    array-length v10, p2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    :goto_0
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    if-eqz p2, :cond_b

    .line 97
    const/4 v6, 0x0

    .line 98
    .local v6, "i":I
    :goto_1
    array-length v10, p2

    if-ge v6, v10, :cond_7

    .line 99
    rem-int v10, v6, p3

    if-nez v10, :cond_3

    .line 100
    const/high16 v10, 0x10000

    rem-int v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "hex":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "k":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v4, v10, 0x4

    .local v4, "fill":I
    :goto_2
    if-ge v7, v4, :cond_2

    .line 102
    const/16 v10, 0x30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 92
    .end local v4    # "fill":I
    .end local v5    # "hex":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "k":I
    :cond_1
    const-string v10, "null"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 104
    .restart local v4    # "fill":I
    .restart local v5    # "hex":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "k":I
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    .end local v4    # "fill":I
    .end local v5    # "hex":Ljava/lang/String;
    .end local v7    # "k":I
    :cond_3
    aget-byte v10, p2, v6

    and-int/lit16 v3, v10, 0xff

    .line 108
    .local v3, "di":I
    const/16 v10, 0x10

    invoke-static {v3, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 109
    .restart local v5    # "hex":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_4

    .line 110
    const/16 v10, 0x30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v10, v6, 0x1

    rem-int/2addr v10, p3

    if-nez v10, :cond_6

    .line 116
    const-string v10, "   "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v7, v6, -0xf

    .restart local v7    # "k":I
    :goto_3
    add-int/lit8 v10, v6, 0x1

    if-ge v7, v10, :cond_5

    .line 118
    aget-byte v10, p2, v7

    invoke-static {v10}, Lcom/zp/rp/ReverseProxy;->toChar(B)C

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 120
    :cond_5
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    .end local v7    # "k":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 124
    .end local v3    # "di":I
    .end local v5    # "hex":Ljava/lang/String;
    :cond_7
    rem-int v10, v6, p3

    sub-int v8, p3, v10

    .line 125
    .local v8, "redex":I
    const/4 v7, 0x0

    .local v7, "k":B
    :goto_4
    if-ge v7, v8, :cond_8

    if-ge v8, p3, :cond_8

    .line 126
    const-string v10, "  "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v10, v7, 0x1

    int-to-byte v7, v10

    goto :goto_4

    .line 129
    :cond_8
    rem-int v2, v6, p3

    .line 130
    .local v2, "count":I
    sub-int v9, v6, v2

    .line 131
    .local v9, "start":I
    if-ge v9, v6, :cond_9

    .line 132
    const-string v10, "   "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_9
    move v7, v9

    .local v7, "k":I
    :goto_5
    if-ge v7, v6, :cond_a

    .line 135
    aget-byte v10, p2, v7

    invoke-static {v10}, Lcom/zp/rp/ReverseProxy;->toChar(B)C

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 138
    :cond_a
    if-ge v8, p3, :cond_b

    .line 139
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "k":I
    .end local v8    # "redex":I
    .end local v9    # "start":I
    :cond_b
    const-string v10, "^-----------------------------------------------------------------------------^"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public static inspect([BLjava/lang/String;)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 66
    const/16 v0, 0x10

    invoke-static {p1, p0, v0}, Lcom/zp/rp/ReverseProxy;->inspect(Ljava/lang/String;[BI)V

    .line 67
    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 160
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readUTF(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 165
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 166
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-object v1
.end method

.method private static toChar(B)C
    .locals 2
    .param p0, "in"    # B

    .prologue
    const/16 v0, 0x20

    .line 149
    if-ne p0, v0, :cond_0

    .line 156
    :goto_0
    return v0

    .line 152
    :cond_0
    const/16 v1, 0x7e

    if-gt p0, v1, :cond_1

    const/16 v1, 0x21

    if-lt p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_2

    .line 154
    :cond_1
    const/16 v0, 0x2e

    goto :goto_0

    .line 156
    :cond_2
    int-to-char v0, p0

    goto :goto_0
.end method

.method public static writeUTF(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 171
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 172
    .local v0, "bs":[B
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 174
    return-void
.end method
