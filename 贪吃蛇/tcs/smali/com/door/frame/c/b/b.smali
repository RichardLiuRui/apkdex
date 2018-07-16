.class public final Lcom/door/frame/c/b/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private synthetic i:Lcom/door/frame/c/b/a;


# direct methods
.method public constructor <init>(Lcom/door/frame/c/b/a;Landroid/content/Context;IIIILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    .line 172
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 174
    iput p3, p0, Lcom/door/frame/c/b/b;->a:I

    .line 176
    iput p4, p0, Lcom/door/frame/c/b/b;->b:I

    .line 177
    iput p5, p0, Lcom/door/frame/c/b/b;->c:I

    .line 178
    iput p6, p0, Lcom/door/frame/c/b/b;->d:I

    .line 179
    iput-object p7, p0, Lcom/door/frame/c/b/b;->e:Ljava/lang/String;

    .line 180
    iput p8, p0, Lcom/door/frame/c/b/b;->f:I

    .line 181
    iput-object p9, p0, Lcom/door/frame/c/b/b;->g:Ljava/lang/String;

    .line 182
    iput p10, p0, Lcom/door/frame/c/b/b;->h:I

    .line 183
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    const/4 v4, 0x0

    .line 190
    const/4 v2, 0x0

    .line 193
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/door/frame/c/b/b;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?gid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&did="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/door/frame/c/b/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    const/16 v1, 0x3a98

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 200
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 202
    const-string v1, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget v5, p0, Lcom/door/frame/c/b/b;->b:I

    iget v6, p0, Lcom/door/frame/c/b/b;->d:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/door/frame/c/b/b;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v1, v1, Lcom/door/frame/c/b/a;->a:Ljava/lang/String;

    const-string v5, "rwd"

    invoke-direct {v3, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :try_start_2
    iget v1, p0, Lcom/door/frame/c/b/b;->b:I

    iget v4, p0, Lcom/door/frame/c/b/b;->d:I

    add-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "code="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 217
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 218
    const/16 v1, 0x1000

    :try_start_3
    new-array v4, v1, [B

    .line 220
    const/4 v1, 0x0

    .line 221
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 249
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 263
    :cond_0
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "compeleteSize="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/door/frame/c/b/b;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 264
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 266
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 268
    :cond_2
    iget v0, p0, Lcom/door/frame/c/b/b;->d:I

    iget v1, p0, Lcom/door/frame/c/b/b;->f:I

    if-ne v0, v1, :cond_3

    .line 269
    iget-object v0, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v0, v0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget v1, p0, Lcom/door/frame/c/b/b;->h:I

    invoke-virtual {v0, v1}, Lcom/door/frame/c/a/b;->a(I)V

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v0, v0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget-object v0, v0, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v0}, Lcom/door/frame/c/a/a;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 276
    :goto_1
    return-void

    .line 223
    :cond_4
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v3, v4, v7, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 224
    iget v7, p0, Lcom/door/frame/c/b/b;->d:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/door/frame/c/b/b;->d:I

    .line 225
    add-int/2addr v1, v6

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 229
    mul-int/lit8 v6, v1, 0x64

    iget v7, p0, Lcom/door/frame/c/b/b;->f:I

    div-int/2addr v6, v7

    if-gtz v6, :cond_5

    iget v6, p0, Lcom/door/frame/c/b/b;->d:I

    iget v7, p0, Lcom/door/frame/c/b/b;->f:I

    if-ne v6, v7, :cond_6

    .line 232
    :cond_5
    iget-object v1, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v1, v1, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget v6, p0, Lcom/door/frame/c/b/b;->a:I

    iget v7, p0, Lcom/door/frame/c/b/b;->d:I

    iget-object v8, p0, Lcom/door/frame/c/b/b;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v1}, Lcom/door/frame/c/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v9, "update download_info set compelete_size=? where thread_id=? and url=?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v11

    const/4 v7, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v7

    const/4 v6, 0x2

    aput-object v8, v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 235
    const/4 v1, 0x2

    iput v1, v6, Landroid/os/Message;->what:I

    .line 237
    iget v1, p0, Lcom/door/frame/c/b/b;->d:I

    mul-int/lit8 v1, v1, 0x64

    iget v7, p0, Lcom/door/frame/c/b/b;->f:I

    div-int/2addr v1, v7

    iput v1, v6, Landroid/os/Message;->arg1:I

    .line 238
    iget v1, p0, Lcom/door/frame/c/b/b;->h:I

    iput v1, v6, Landroid/os/Message;->arg2:I

    .line 239
    invoke-virtual {v5}, Landroid/os/Bundle;->clear()V

    .line 240
    const-string v1, "complete"

    iget v7, p0, Lcom/door/frame/c/b/b;->d:I

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v1, "filelen"

    iget v7, p0, Lcom/door/frame/c/b/b;->f:I

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v1, "type"

    iget v7, p0, Lcom/door/frame/c/b/b;->h:I

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string v1, "dl_id"

    iget-object v7, p0, Lcom/door/frame/c/b/b;->g:Ljava/lang/String;

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v6, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 245
    const/4 v1, 0x0

    .line 246
    iget-object v7, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v7, v7, Lcom/door/frame/c/b/a;->b:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    :cond_6
    iget-object v6, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget v6, v6, Lcom/door/frame/c/b/a;->d:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    .line 253
    :goto_2
    :try_start_6
    iget-object v4, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    const/4 v5, 0x3

    iput v5, v4, Lcom/door/frame/c/b/a;->d:I

    .line 254
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 255
    const/4 v5, -0x1

    iput v5, v4, Landroid/os/Message;->what:I

    .line 256
    iget-object v5, p0, Lcom/door/frame/c/b/b;->g:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    iget v5, p0, Lcom/door/frame/c/b/b;->f:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 258
    iget v5, p0, Lcom/door/frame/c/b/b;->h:I

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 259
    iget-object v5, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v5, v5, Lcom/door/frame/c/b/a;->b:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 263
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "compeleteSize="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/door/frame/c/b/b;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 264
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 266
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 268
    :cond_9
    iget v0, p0, Lcom/door/frame/c/b/b;->d:I

    iget v1, p0, Lcom/door/frame/c/b/b;->f:I

    if-ne v0, v1, :cond_a

    .line 269
    iget-object v0, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v0, v0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget v1, p0, Lcom/door/frame/c/b/b;->h:I

    invoke-virtual {v0, v1}, Lcom/door/frame/c/a/b;->a(I)V

    .line 270
    :cond_a
    iget-object v0, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v0, v0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget-object v0, v0, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v0}, Lcom/door/frame/c/a/a;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 271
    :catch_1
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 261
    :catchall_0
    move-exception v0

    move-object v3, v4

    .line 263
    :goto_3
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "compeleteSize="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/door/frame/c/b/b;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 264
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 265
    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 266
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 268
    :cond_d
    iget v1, p0, Lcom/door/frame/c/b/b;->d:I

    iget v2, p0, Lcom/door/frame/c/b/b;->f:I

    if-ne v1, v2, :cond_e

    .line 269
    iget-object v1, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v1, v1, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget v2, p0, Lcom/door/frame/c/b/b;->h:I

    invoke-virtual {v1, v2}, Lcom/door/frame/c/a/b;->a(I)V

    .line 270
    :cond_e
    iget-object v1, p0, Lcom/door/frame/c/b/b;->i:Lcom/door/frame/c/b/a;

    iget-object v1, v1, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget-object v1, v1, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v1}, Lcom/door/frame/c/a/a;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 274
    :goto_4
    throw v0

    .line 271
    :catch_2
    move-exception v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 271
    :catch_3
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 261
    :catchall_1
    move-exception v1

    move-object v3, v4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v12, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_3

    .line 252
    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto/16 :goto_2

    :catch_6
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto/16 :goto_2
.end method
