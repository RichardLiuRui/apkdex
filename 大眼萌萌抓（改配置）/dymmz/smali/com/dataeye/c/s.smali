.class public Lcom/dataeye/c/s;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/ArrayList;

.field private static b:Lcom/dataeye/c/s;

.field private static c:Lcom/dataeye/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dataeye/c/s;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dataeye/c/r;

    invoke-direct {v0, p1, p2}, Lcom/dataeye/c/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/dataeye/c/s;->c:Lcom/dataeye/c/r;

    return-void
.end method

.method public static a()Lcom/dataeye/c/s;
    .locals 1

    sget-object v0, Lcom/dataeye/c/s;->b:Lcom/dataeye/c/s;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/dataeye/c/s;->b:Lcom/dataeye/c/s;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/dataeye/c/s;

    invoke-direct {v0, p0, p1}, Lcom/dataeye/c/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/dataeye/c/s;->b:Lcom/dataeye/c/s;

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/dataeye/c/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static c()Lcom/dataeye/c/r;
    .locals 1

    sget-object v0, Lcom/dataeye/c/s;->c:Lcom/dataeye/c/r;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9

    const/4 v2, 0x0

    const-string v1, "dataeye_agenda_log"

    const-string v3, "type=? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "before_login_event"

    aput-object v5, v4, v0

    const-string v7, " _id desc "

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/dataeye/c/s;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "agenda_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dataeye/a/h;

    invoke-direct {v3}, Lcom/dataeye/a/h;-><init>()V

    new-instance v4, Lcom/dataeye/b/c;

    invoke-static {v2}, Lcom/dataeye/b/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/dataeye/b/c;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/dataeye/a/h;->a(Lcom/dataeye/b/c;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    sget v0, Lcom/dataeye/c/b;->k:I

    if-ne v0, v5, :cond_2

    const-string v1, "dataeye_agenda_log"

    const-string v3, "( account_id=? or  account_id=? ) and type=? "

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v0, "_DESelf_DEFAULT_ACCOUNTID"

    aput-object v0, v4, v7

    const-string v0, "payment"

    aput-object v0, v4, v5

    const-string v7, " _id desc "

    move-object v0, p2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/dataeye/c/s;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "agenda_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dataeye/a/k;

    invoke-direct {v3}, Lcom/dataeye/a/k;-><init>()V

    new-instance v4, Lcom/dataeye/b/c;

    invoke-static {v2}, Lcom/dataeye/b/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/dataeye/b/c;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/dataeye/a/k;->a(Lcom/dataeye/b/c;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v1

    :cond_2
    const-string v1, "dataeye_agenda_log"

    const-string v3, "account_id=? and type=? "

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v0, "payment"

    aput-object v0, v4, v7

    const-string v7, " _id desc "

    move-object v0, p2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Integer;)V
    .locals 4

    const-string v0, "DELETE FROM dataeye_history_log WHERE _id = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 4

    const-string v0, ","

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE FROM dataeye_agenda_log WHERE _id IN (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/dataeye/b/f;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "insert  or replace into dataeye_history_log( history_data )  values( ? )"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dataeye/b/f;->a()[B

    move-result-object v3

    invoke-static {v3}, Lcom/dataeye/b/a;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dataeye/a/g;)V
    .locals 1

    const-string v0, "errorreport"

    invoke-virtual {p0, v0, p1, p2}, Lcom/dataeye/c/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dataeye/b/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dataeye/a/h;)V
    .locals 1

    const-string v0, "event"

    invoke-virtual {p0, v0, p1, p2}, Lcom/dataeye/c/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dataeye/b/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dataeye/a/i;)V
    .locals 1

    const-string v0, "oss"

    invoke-virtual {p0, v0, p1, p2}, Lcom/dataeye/c/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dataeye/b/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dataeye/a/k;)V
    .locals 1

    const-string v0, "payment"

    invoke-virtual {p0, v0, p1, p2}, Lcom/dataeye/c/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dataeye/b/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/dataeye/b/f;)V
    .locals 4

    const-string v0, "insert  or replace into dataeye_agenda_log(type,account_id ,agenda_data)  values(?,?,?)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Lcom/dataeye/b/f;->a()[B

    move-result-object v3

    invoke-static {v3}, Lcom/dataeye/b/a;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dataeye/c/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9

    const/4 v2, 0x0

    const-string v1, "dataeye_agenda_log"

    const-string v3, " type=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "errorreport"

    aput-object v5, v4, v0

    const-string v7, "_id desc"

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/dataeye/c/s;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "agenda_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dataeye/a/g;

    invoke-direct {v3}, Lcom/dataeye/a/g;-><init>()V

    new-instance v4, Lcom/dataeye/b/c;

    invoke-static {v2}, Lcom/dataeye/b/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/dataeye/b/c;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/dataeye/a/g;->a(Lcom/dataeye/b/c;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    sget v0, Lcom/dataeye/c/b;->k:I

    if-ne v0, v5, :cond_2

    const-string v1, "dataeye_agenda_log"

    const-string v3, "( account_id=? or account_id=? ) and type=? "

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v0, "_DESelf_DEFAULT_ACCOUNTID"

    aput-object v0, v4, v7

    const-string v0, "event"

    aput-object v0, v4, v5

    const-string v7, " _id desc "

    move-object v0, p2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/dataeye/c/s;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "agenda_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dataeye/a/h;

    invoke-direct {v3}, Lcom/dataeye/a/h;-><init>()V

    new-instance v4, Lcom/dataeye/b/c;

    invoke-static {v2}, Lcom/dataeye/b/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/dataeye/b/c;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/dataeye/a/h;->a(Lcom/dataeye/b/c;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v1

    :cond_2
    const-string v1, "dataeye_agenda_log"

    const-string v3, " account_id=? and type=? "

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v0, "event"

    aput-object v0, v4, v7

    const-string v7, " _id desc "

    move-object v0, p2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public b(Ljava/lang/String;Lcom/dataeye/a/h;)V
    .locals 1

    const-string v0, "before_login_event"

    invoke-virtual {p0, v0, p1, p2}, Lcom/dataeye/c/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dataeye/b/f;)V

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    sget v0, Lcom/dataeye/c/b;->k:I

    if-ne v0, v5, :cond_2

    const-string v1, "dataeye_agenda_log"

    const-string v3, "( account_id=? or account_id=? ) and type=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v0, "_DESelf_DEFAULT_ACCOUNTID"

    aput-object v0, v4, v7

    const-string v0, "oss"

    aput-object v0, v4, v5

    const-string v7, "_id desc"

    move-object v0, p2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/dataeye/c/s;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "agenda_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dataeye/a/i;

    invoke-direct {v3}, Lcom/dataeye/a/i;-><init>()V

    new-instance v4, Lcom/dataeye/b/c;

    invoke-static {v2}, Lcom/dataeye/b/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/dataeye/b/c;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/dataeye/a/i;->a(Lcom/dataeye/b/c;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v1

    :cond_2
    const-string v1, "dataeye_agenda_log"

    const-string v3, " account_id=?  and type=?"

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v0, "oss"

    aput-object v0, v4, v7

    const-string v7, "_id desc"

    move-object v0, p2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .locals 9

    const/4 v3, 0x0

    const-string v1, "dataeye_history_log"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "*"

    aput-object v4, v2, v0

    const-string v7, " _id desc "

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "history_data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/dataeye/a/e;

    invoke-direct {v4}, Lcom/dataeye/a/e;-><init>()V

    new-instance v5, Lcom/dataeye/b/c;

    invoke-static {v3}, Lcom/dataeye/b/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/dataeye/b/c;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/dataeye/a/e;->a(Lcom/dataeye/b/c;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
