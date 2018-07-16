.class public final Lcom/door/frame/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/os/Handler;

.field c:Lcom/door/frame/c/a/b;

.field public d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/util/List;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/door/frame/c/b/a;->d:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/door/frame/c/b/a;->i:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/door/frame/c/b/a;->a:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/door/frame/c/b/a;->f:I

    .line 50
    iput-object p5, p0, Lcom/door/frame/c/b/a;->b:Landroid/os/Handler;

    .line 51
    iput-object p4, p0, Lcom/door/frame/c/b/a;->i:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/door/frame/c/a/b;

    invoke-direct {v0, p4}, Lcom/door/frame/c/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    .line 54
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget-object v0, v0, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v0}, Lcom/door/frame/c/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "download_info"

    const-string v2, "url=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 282
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;I)Lcom/door/frame/b/c;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/door/frame/c/b/a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/door/frame/c/b/a;->a(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget-object v3, v3, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v3}, Lcom/door/frame/c/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select count(*)  from download_info where url=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    :goto_0
    if-eqz v0, :cond_6

    .line 74
    if-gtz p1, :cond_2

    move-object v0, v9

    .line 112
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/door/frame/c/b/a;->g:I

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/door/frame/c/b/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v0, p0, Lcom/door/frame/c/b/a;->g:I

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_2
    :try_start_2
    iget v0, p0, Lcom/door/frame/c/b/a;->g:I

    iget v2, p0, Lcom/door/frame/c/b/a;->f:I

    div-int v10, v0, v2

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    .line 79
    :goto_3
    iget v0, p0, Lcom/door/frame/c/b/a;->f:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_5

    .line 84
    new-instance v0, Lcom/door/frame/b/b;

    iget v1, p0, Lcom/door/frame/c/b/a;->f:I

    add-int/lit8 v1, v1, -0x1

    .line 85
    iget v2, p0, Lcom/door/frame/c/b/a;->f:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v10

    iget v3, p0, Lcom/door/frame/c/b/a;->g:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    .line 86
    iget v6, p0, Lcom/door/frame/c/b/a;->g:I

    move-object v7, p2

    move v8, p3

    .line 84
    invoke-direct/range {v0 .. v8}, Lcom/door/frame/b/b;-><init>(IIIILjava/lang/String;ILjava/lang/String;I)V

    .line 87
    iget-object v1, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget-object v1, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/door/frame/c/a/b;->a(Ljava/util/List;)V

    .line 91
    new-instance v0, Lcom/door/frame/b/c;

    iget v1, p0, Lcom/door/frame/c/b/a;->g:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/door/frame/b/c;-><init>(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :try_start_3
    iget-object v0, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/door/frame/c/b/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    move-object v0, v9

    .line 112
    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 80
    :cond_5
    new-instance v0, Lcom/door/frame/b/b;

    mul-int v2, v1, v10

    add-int/lit8 v3, v1, 0x1

    .line 81
    mul-int/2addr v3, v10

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    iget v6, p0, Lcom/door/frame/c/b/a;->g:I

    move-object v7, p2

    move v8, p3

    .line 80
    invoke-direct/range {v0 .. v8}, Lcom/door/frame/b/b;-><init>(IIIILjava/lang/String;ILjava/lang/String;I)V

    .line 82
    iget-object v2, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/door/frame/c/b/a;->c:Lcom/door/frame/c/a/b;

    iget-object v2, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/door/frame/c/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    .line 96
    const-string v0, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not isFirst size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 103
    new-instance v0, Lcom/door/frame/b/c;

    iget-object v3, p0, Lcom/door/frame/c/b/a;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lcom/door/frame/b/c;-><init>(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/door/frame/b/b;

    .line 100
    iget v4, v0, Lcom/door/frame/b/b;->d:I

    add-int/2addr v1, v4

    .line 101
    iget v4, v0, Lcom/door/frame/b/b;->c:I

    iget v0, v0, Lcom/door/frame/b/b;->b:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public final a()V
    .locals 12

    .prologue
    const/4 v1, 0x2

    .line 148
    iget-object v0, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 149
    iget v0, p0, Lcom/door/frame/c/b/a;->d:I

    if-ne v0, v1, :cond_1

    .line 158
    :cond_0
    return-void

    .line 151
    :cond_1
    iput v1, p0, Lcom/door/frame/c/b/a;->d:I

    .line 152
    iget-object v0, p0, Lcom/door/frame/c/b/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/door/frame/b/b;

    .line 153
    new-instance v0, Lcom/door/frame/c/b/b;

    iget-object v2, p0, Lcom/door/frame/c/b/a;->i:Landroid/content/Context;

    iget v3, v1, Lcom/door/frame/b/b;->a:I

    iget v4, v1, Lcom/door/frame/b/b;->b:I

    .line 154
    iget v5, v1, Lcom/door/frame/b/b;->c:I

    iget v6, v1, Lcom/door/frame/b/b;->d:I

    .line 155
    iget-object v7, v1, Lcom/door/frame/b/b;->e:Ljava/lang/String;

    iget v8, v1, Lcom/door/frame/b/b;->f:I

    iget-object v9, v1, Lcom/door/frame/b/b;->g:Ljava/lang/String;

    iget v10, v1, Lcom/door/frame/b/b;->h:I

    move-object v1, p0

    .line 153
    invoke-direct/range {v0 .. v10}, Lcom/door/frame/c/b/b;-><init>(Lcom/door/frame/c/b/a;Landroid/content/Context;IIIILjava/lang/String;ILjava/lang/String;I)V

    .line 155
    invoke-virtual {v0}, Lcom/door/frame/c/b/b;->start()V

    goto :goto_0
.end method
