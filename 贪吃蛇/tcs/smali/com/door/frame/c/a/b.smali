.class public final Lcom/door/frame/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/door/frame/c/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/door/frame/c/a/a;

    invoke-direct {v0, p1}, Lcom/door/frame/c/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 58
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v0}, Lcom/door/frame/c/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    const-string v1, "select thread_id, start_pos, end_pos,compelete_size,url, file_len, dl_id, file_id from download_info where url=?"

    .line 61
    new-array v2, v12, [Ljava/lang/String;

    aput-object p1, v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 62
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 69
    return-object v9

    .line 63
    :cond_0
    new-instance v0, Lcom/door/frame/a/b;

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 64
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 65
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x6

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 63
    invoke-direct/range {v0 .. v8}, Lcom/door/frame/a/b;-><init>(IIIILjava/lang/String;ILjava/lang/String;I)V

    .line 66
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v0}, Lcom/door/frame/c/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 109
    const-string v2, "download_info"

    const-string v3, "file_id=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7

    .prologue
    .line 45
    iget-object v0, p0, Lcom/door/frame/c/a/b;->a:Lcom/door/frame/c/a/a;

    invoke-virtual {v0}, Lcom/door/frame/c/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 46
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/door/frame/a/b;

    .line 47
    const-string v3, "insert into download_info(thread_id,start_pos, end_pos,compelete_size,url,file_len,dl_id,file_id) values (?,?,?,?,?,?,?,?)"

    .line 48
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/door/frame/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Lcom/door/frame/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 49
    iget v6, v0, Lcom/door/frame/a/b;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v0, Lcom/door/frame/a/b;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v0, Lcom/door/frame/a/b;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v0, Lcom/door/frame/a/b;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, v0, Lcom/door/frame/a/b;->g:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget v0, v0, Lcom/door/frame/a/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 50
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
