.class public final Lcom/p/s/j/z/c/d;
.super Ljava/lang/Object;
.source "ASvcLoader.java"


# static fields
.field private static a:Lcom/p/s/j/z/c/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:J

.field private d:[B

.field private e:[B

.field private f:[B

.field private g:[B

.field private h:J

.field private i:Ljava/util/Map;

.field private j:Ljava/lang/ClassLoader;

.field private k:Ljava/io/File;

.field private l:J

.field private m:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/p/s/j/z/c/d;->d:[B

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/p/s/j/z/c/d;->e:[B

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/p/s/j/z/c/d;->f:[B

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/p/s/j/z/c/d;->g:[B

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/p/s/j/z/c/d;->i:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/p/s/j/z/c/d;->b:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/p/s/j/z/c/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/p/s/j/z/c/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/p/s/j/z/c/d;->k:Ljava/io/File;

    .line 47
    invoke-static {p1}, Lcom/p/s/j/z/c/c;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/p/s/j/z/c/d;->l:J

    .line 48
    return-void

    .line 29
    nop

    :array_0
    .array-data 1
        0x4dt
        0x45t
        0x54t
        0x41t
        0x2dt
        0x49t
        0x4et
        0x46t
        0x2ft
        0x4dt
        0x41t
        0x4et
        0x49t
        0x46t
        0x45t
        0x53t
        0x54t
        0x2et
        0x4dt
        0x46t
    .end array-data

    .line 31
    :array_1
    .array-data 1
        0x68t
        0x69t
        0x74t
        0x54t
        0x65t
        0x73t
        0x74t
    .end array-data

    .line 33
    :array_2
    .array-data 1
        0x6ft
        0x6et
        0x52t
        0x65t
        0x6ct
        0x6ft
        0x61t
        0x64t
    .end array-data

    .line 35
    :array_3
    .array-data 1
        0x6ft
        0x6et
        0x44t
        0x65t
        0x73t
        0x74t
        0x72t
        0x6ft
        0x79t
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/p/s/j/z/c/d;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/p/s/j/z/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/p/s/j/z/c/d;->a:Lcom/p/s/j/z/c/d;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/p/s/j/z/c/d;

    invoke-direct {v0, p0}, Lcom/p/s/j/z/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/p/s/j/z/c/d;->a:Lcom/p/s/j/z/c/d;

    .line 54
    :cond_0
    sget-object v0, Lcom/p/s/j/z/c/d;->a:Lcom/p/s/j/z/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 153
    .line 154
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/p/s/j/z/c/d;->d:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 156
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_5

    .line 161
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 164
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v3

    .line 165
    const-wide/16 v5, 0x800

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 186
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 184
    :cond_0
    :goto_1
    return-object v0

    .line 167
    :cond_1
    long-to-int v1, v3

    :try_start_3
    new-array v1, v1, [B

    .line 168
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 170
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 171
    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 172
    array-length v4, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v4, :cond_2

    .line 186
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 172
    :cond_2
    :try_start_5
    aget-object v5, v3, v1

    .line 173
    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 186
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 172
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 182
    :catch_2
    move-exception v1

    .line 183
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 186
    if-eqz v2, :cond_0

    .line 188
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    .line 186
    :cond_5
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 186
    :goto_4
    if-eqz v2, :cond_6

    .line 188
    :try_start_b
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 192
    :cond_6
    :goto_5
    throw v0

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_5

    .line 185
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 182
    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_3
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/p/s/j/z/c/d;->e:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/p/s/j/z/c/d;->g:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 95
    :goto_0
    return-object p1

    .line 93
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/p/s/j/z/c/b;->a()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 136
    .line 138
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/p/s/j/z/c/d;->k:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/p/s/j/z/c/d;->a(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 143
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 145
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 143
    :goto_2
    if-eqz v1, :cond_1

    .line 145
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 149
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 142
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 143
    :catch_4
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/p/s/j/z/c/d;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/p/s/j/z/c/e;

    .line 197
    iget-object v3, p0, Lcom/p/s/j/z/c/d;->j:Ljava/lang/ClassLoader;

    .line 198
    iget-object v1, p0, Lcom/p/s/j/z/c/d;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 199
    if-nez v0, :cond_0

    .line 201
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/p/s/j/z/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/p/s/j/z/c/c;->a(Landroid/content/Context;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/p/s/j/z/c/d;->l:J

    .line 206
    iget-wide v6, p0, Lcom/p/s/j/z/c/d;->l:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    move-object v0, v2

    .line 271
    :goto_1
    monitor-exit p0

    return-object v0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :cond_0
    :try_start_4
    iget-object v0, v0, Lcom/p/s/j/z/c/e;->a:Ljava/lang/Object;

    goto :goto_1

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/p/s/j/z/c/d;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_2
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/p/s/j/z/c/d;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/p/s/j/z/c/d;->h:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    iput-wide v6, p0, Lcom/p/s/j/z/c/d;->h:J

    move v1, v4

    :goto_3
    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/p/s/j/z/c/d;->m:Z

    if-eqz v1, :cond_6

    :cond_3
    move-object v1, v2

    .line 217
    :goto_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/p/s/j/z/c/d;->m:Z

    .line 218
    if-nez v1, :cond_9

    .line 220
    iget-object v1, p0, Lcom/p/s/j/z/c/d;->k:Ljava/io/File;

    invoke-static {v1}, Lcom/p/s/j/z/c/c;->a(Ljava/io/File;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/p/s/j/z/c/d;->l:J

    .line 221
    iget-object v1, p0, Lcom/p/s/j/z/c/d;->k:Ljava/io/File;

    iget-object v3, p0, Lcom/p/s/j/z/c/d;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/p/s/j/z/c/g;->a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 222
    if-nez v1, :cond_8

    .line 223
    if-nez v0, :cond_7

    move-object v0, v2

    .line 224
    goto :goto_1

    .line 212
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/p/s/j/z/c/e;

    iget-object v7, v1, Lcom/p/s/j/z/c/e;->a:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/p/s/j/z/c/d;->a(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-wide v7, v1, Lcom/p/s/j/z/c/e;->b:J

    iget-wide v9, p0, Lcom/p/s/j/z/c/d;->c:J

    cmp-long v1, v7, v9

    if-nez v1, :cond_2

    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v5

    goto :goto_3

    .line 214
    :cond_6
    if-eqz v0, :cond_e

    iget-wide v4, v0, Lcom/p/s/j/z/c/e;->b:J

    iget-wide v6, p0, Lcom/p/s/j/z/c/d;->c:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_e

    .line 215
    iget-object v0, v0, Lcom/p/s/j/z/c/e;->a:Ljava/lang/Object;

    goto :goto_1

    .line 225
    :cond_7
    iget-object v0, v0, Lcom/p/s/j/z/c/e;->a:Ljava/lang/Object;

    goto :goto_1

    .line 227
    :cond_8
    iput-object v1, p0, Lcom/p/s/j/z/c/d;->j:Ljava/lang/ClassLoader;

    .line 228
    iget-wide v3, p0, Lcom/p/s/j/z/c/d;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/p/s/j/z/c/d;->c:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    :cond_9
    :try_start_5
    invoke-direct {p0, p1}, Lcom/p/s/j/z/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    if-nez v4, :cond_a

    move-object v0, v2

    .line 237
    goto/16 :goto_1

    .line 241
    :cond_a
    if-eqz v0, :cond_d

    .line 242
    iget-object v1, v0, Lcom/p/s/j/z/c/e;->a:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/p/s/j/z/c/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .line 245
    :goto_5
    const/4 v1, 0x1

    iget-object v5, p0, Lcom/p/s/j/z/c/d;->j:Ljava/lang/ClassLoader;

    invoke-static {v4, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 249
    const/4 v4, 0x1

    :try_start_6
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 250
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/p/s/j/z/c/d;->b:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    .line 259
    :goto_6
    if-eqz v1, :cond_b

    .line 260
    :try_start_7
    iget-object v4, p0, Lcom/p/s/j/z/c/d;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/p/s/j/z/c/d;->f:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/Object;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v3, v6, v4

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 263
    :cond_b
    :goto_7
    :try_start_9
    new-instance v3, Lcom/p/s/j/z/c/e;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/p/s/j/z/c/e;-><init>(Lcom/p/s/j/z/c/d;B)V

    .line 264
    iget-wide v4, p0, Lcom/p/s/j/z/c/d;->c:J

    iput-wide v4, v3, Lcom/p/s/j/z/c/e;->b:J

    .line 265
    iput-object v1, v3, Lcom/p/s/j/z/c/e;->a:Ljava/lang/Object;

    .line 266
    iget-object v4, p0, Lcom/p/s/j/z/c/d;->i:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v1

    .line 267
    goto/16 :goto_1

    .line 253
    :catch_1
    move-exception v4

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v1

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_6

    .line 269
    :catch_3
    move-exception v1

    if-nez v0, :cond_c

    move-object v0, v2

    .line 270
    goto/16 :goto_1

    .line 271
    :cond_c
    :try_start_b
    iget-object v0, v0, Lcom/p/s/j/z/c/e;->a:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v3

    goto :goto_7

    :cond_d
    move-object v3, v2

    goto :goto_5

    :cond_e
    move-object v1, v3

    goto/16 :goto_4
.end method
