.class public Lcom/p/s/j/z/c/c;
.super Ljava/lang/Object;
.source "ASetupTool.java"


# static fields
.field private static a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 16
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/p/s/j/z/c/c;->a:[B

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    aput-byte v1, v0, v3

    const/4 v1, 0x4

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    .line 123
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/p/s/j/z/c/c;->b:[B

    return-void

    .line 16
    :array_0
    .array-data 1
        0x56t
        0x65t
        0x72t
    .end array-data

    .line 123
    :array_1
    .array-data 1
        0x2ft
        0x61t
        0x73t
        0x73t
        0x65t
        0x74t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 242
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/p/s/j/z/c/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/p/s/j/z/c/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/p/s/j/z/c/c;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    sget-object v2, Lcom/p/s/j/z/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/p/s/j/z/c/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/p/s/j/z/c/c;->a(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V

    .line 249
    :cond_0
    invoke-static {v0}, Lcom/p/s/j/z/c/c;->a(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 253
    :goto_0
    return-wide v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)J
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :try_start_1
    invoke-static {v2}, Lcom/p/s/j/z/c/c;->b(Ljava/io/InputStream;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 180
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    :goto_0
    return-wide v0

    .line 180
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    .line 182
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    :cond_0
    :goto_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 180
    :goto_3
    if-eqz v2, :cond_1

    .line 182
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 186
    :cond_1
    :goto_4
    throw v0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 179
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 180
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    :try_start_0
    const-class v0, Lcom/p/s/j/z/c/c;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/p/s/j/z/c/b;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 35
    sget-object v5, Lcom/p/s/j/z/c/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 38
    :cond_1
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    invoke-static {v1}, Lcom/p/s/j/z/c/c;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 42
    const/4 v0, 0x0

    .line 43
    array-length v8, v7

    move v5, v4

    move v4, v0

    .line 45
    :goto_0
    add-int/lit8 v0, v4, 0x4

    if-ge v0, v8, :cond_2

    const/4 v0, 0x4

    move v2, v0

    .line 46
    :goto_1
    if-lez v2, :cond_6

    .line 47
    new-instance v0, Lcom/p/s/j/z/c/j;

    invoke-direct {v0, v7, v4, v2}, Lcom/p/s/j/z/c/j;-><init>([BII)V

    .line 51
    iget v9, v0, Lcom/p/s/j/z/c/j;->b:I

    add-int/lit8 v9, v9, 0x4

    iget v10, v0, Lcom/p/s/j/z/c/j;->c:I

    if-le v9, v10, :cond_3

    const/4 v0, 0x0

    .line 52
    :goto_2
    add-int/2addr v4, v2

    .line 54
    add-int v2, v4, v0

    if-ge v2, v8, :cond_4

    .line 55
    :goto_3
    if-lez v0, :cond_6

    .line 56
    if-eqz v5, :cond_5

    .line 60
    const/4 v2, 0x0

    .line 61
    add-int/2addr v0, v4

    move v4, v0

    move v5, v2

    .line 62
    goto :goto_0

    .line 45
    :cond_2
    sub-int v0, v8, v4

    move v2, v0

    goto :goto_1

    .line 51
    :cond_3
    iget v9, v0, Lcom/p/s/j/z/c/j;->b:I

    add-int/lit8 v9, v9, 0x4

    iput v9, v0, Lcom/p/s/j/z/c/j;->b:I

    iget-object v9, v0, Lcom/p/s/j/z/c/j;->a:[B

    iget v10, v0, Lcom/p/s/j/z/c/j;->b:I

    add-int/lit8 v10, v10, -0x4

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x18

    iget-object v10, v0, Lcom/p/s/j/z/c/j;->a:[B

    iget v11, v0, Lcom/p/s/j/z/c/j;->b:I

    add-int/lit8 v11, v11, -0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    iget-object v10, v0, Lcom/p/s/j/z/c/j;->a:[B

    iget v11, v0, Lcom/p/s/j/z/c/j;->b:I

    add-int/lit8 v11, v11, -0x2

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    iget-object v10, v0, Lcom/p/s/j/z/c/j;->a:[B

    iget v0, v0, Lcom/p/s/j/z/c/j;->b:I

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v10, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v9

    goto :goto_2

    .line 54
    :cond_4
    sub-int v0, v8, v4

    goto :goto_3

    .line 65
    :cond_5
    const/4 v2, 0x7

    invoke-static {v7, v4, v2, v0}, Lcom/p/s/j/z/c/f;->a([BIII)[B

    move-result-object v2

    .line 66
    add-int/2addr v0, v4

    .line 67
    const/4 v4, 0x0

    array-length v9, v2

    invoke-virtual {v3, v2, v4, v9}, Ljava/io/FileOutputStream;->write([BII)V

    move v4, v0

    .line 44
    goto :goto_0

    .line 71
    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 73
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    const/4 v2, 0x0

    .line 76
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 77
    invoke-virtual {v6, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-eqz v1, :cond_7

    .line 82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_7
    :goto_4
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    if-eqz v1, :cond_8

    .line 82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_8
    if-eqz v2, :cond_7

    .line 84
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    :goto_6
    if-eqz v1, :cond_9

    .line 82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_9
    if-eqz v2, :cond_a

    .line 84
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 85
    :cond_a
    throw v0

    .line 80
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_6

    .line 78
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_5
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    const/high16 v1, 0x80000

    .line 89
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 90
    new-array v1, v1, [B

    .line 92
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)J
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    .line 190
    const/4 v4, 0x0

    .line 191
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/p/s/j/z/c/c;->a:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 193
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 196
    if-eqz v4, :cond_3

    .line 197
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 201
    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 215
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 213
    :cond_0
    :goto_1
    return-wide v0

    .line 203
    :cond_1
    long-to-int v2, v4

    :try_start_3
    new-array v2, v2, [B

    .line 204
    invoke-virtual {v3, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 205
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 206
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    .line 215
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    .line 208
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 211
    :catch_1
    move-exception v2

    .line 212
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 215
    if-eqz v3, :cond_0

    .line 217
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    .line 215
    :cond_3
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    .line 214
    :catchall_0
    move-exception v0

    move-object v3, v4

    .line 215
    :goto_3
    if-eqz v3, :cond_4

    .line 217
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 221
    :cond_4
    :goto_4
    throw v0

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_4

    .line 214
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 211
    :catch_6
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method
