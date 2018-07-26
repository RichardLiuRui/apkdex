.class Lcom/shunpay210/sdk/SMS210$SmsContent;
.super Landroid/database/ContentObserver;
.source "SMS210.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shunpay210/sdk/SMS210;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsContent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shunpay210/sdk/SMS210;


# direct methods
.method public constructor <init>(Lcom/shunpay210/sdk/SMS210;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/shunpay210/sdk/SMS210$SmsContent;->this$0:Lcom/shunpay210/sdk/SMS210;

    .line 183
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 13
    .param p1, "selfChange"    # Z

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$SmsContent;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_context:Landroid/content/Context;
    invoke-static {v2}, Lcom/shunpay210/sdk/SMS210;->access$3(Lcom/shunpay210/sdk/SMS210;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "body"

    aput-object v4, v2, v3

    const-string v3, " read=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "0"

    aput-object v12, v4, v5

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 194
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    const-string v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 197
    .local v6, "column":I
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "content":Ljava/lang/String;
    const-string v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 199
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "port":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 202
    .local v10, "threadId":J
    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$SmsContent;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_sms:Ljava/util/Vector;
    invoke-static {v2}, Lcom/shunpay210/sdk/SMS210;->access$4(Lcom/shunpay210/sdk/SMS210;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$SmsContent;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_sms:Ljava/util/Vector;
    invoke-static {v2}, Lcom/shunpay210/sdk/SMS210;->access$4(Lcom/shunpay210/sdk/SMS210;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "column":I
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "port":Ljava/lang/String;
    .end local v10    # "threadId":J
    :cond_1
    :goto_0
    return-void

    .line 206
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "column":I
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "port":Ljava/lang/String;
    .restart local v10    # "threadId":J
    :cond_2
    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$SmsContent;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_listener:Lcom/shunpay210/sdk/SMS210$SmsListener;
    invoke-static {v2}, Lcom/shunpay210/sdk/SMS210;->access$5(Lcom/shunpay210/sdk/SMS210;)Lcom/shunpay210/sdk/SMS210$SmsListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$SmsContent;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_listener:Lcom/shunpay210/sdk/SMS210$SmsListener;
    invoke-static {v2}, Lcom/shunpay210/sdk/SMS210;->access$5(Lcom/shunpay210/sdk/SMS210;)Lcom/shunpay210/sdk/SMS210$SmsListener;

    move-result-object v2

    invoke-interface {v2, v9, v7}, Lcom/shunpay210/sdk/SMS210$SmsListener;->onSMSRecevied(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    iget-object v2, p0, Lcom/shunpay210/sdk/SMS210$SmsContent;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_sms:Ljava/util/Vector;
    invoke-static {v2}, Lcom/shunpay210/sdk/SMS210;->access$4(Lcom/shunpay210/sdk/SMS210;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://sms/conversations/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 213
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "column":I
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "port":Ljava/lang/String;
    .end local v10    # "threadId":J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 211
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "column":I
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "port":Ljava/lang/String;
    .restart local v10    # "threadId":J
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method
