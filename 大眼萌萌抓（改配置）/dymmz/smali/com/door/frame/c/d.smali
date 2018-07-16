.class final Lcom/door/frame/c/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/door/frame/c/a;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:[Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/door/frame/c/a;Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    iput-object p2, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/door/frame/c/d;->c:Ljava/lang/String;

    iput p4, p0, Lcom/door/frame/c/d;->d:I

    iput-object p5, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 176
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 182
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 183
    const-string v0, "aid"

    invoke-static {}, Lcom/door/frame/c/a;->l()Lcom/door/frame/b/a;

    move-result-object v1

    iget v1, v1, Lcom/door/frame/b/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "chid"

    invoke-static {}, Lcom/door/frame/c/a;->l()Lcom/door/frame/b/a;

    move-result-object v1

    iget-object v1, v1, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "prod"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "mac"

    iget-object v1, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/door/frame/utils/CmmUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "screenx"

    iget-object v1, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/door/frame/utils/CmmUtils;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "screeny"

    iget-object v1, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/door/frame/utils/CmmUtils;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "plat"

    iget-object v1, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/door/frame/utils/CmmUtils;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "sinfo"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "apil"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "sys"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "sver"

    invoke-static {}, Lcom/door/frame/c/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "cpid"

    invoke-static {}, Lcom/door/frame/c/a;->l()Lcom/door/frame/b/a;

    move-result-object v1

    iget v1, v1, Lcom/door/frame/b/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "ua"

    iget-object v1, p0, Lcom/door/frame/c/d;->c:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "uid"

    invoke-static {}, Lcom/door/frame/c/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "appstart"

    iget v1, p0, Lcom/door/frame/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 216
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    const-string v2, "version"

    invoke-static {}, Lcom/door/frame/c/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 220
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 221
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v2, "version"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 225
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 226
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v2, "version"

    iget-object v3, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {v3}, Lcom/door/frame/c/a;->a(Lcom/door/frame/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 230
    const-string v1, "verlist"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move v0, v7

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_5

    .line 240
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 241
    const-string v0, "log"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1
    new-instance v0, Lcom/door/frame/c/g;

    invoke-static {}, Lcom/door/frame/c/a;->f()Landroid/content/Context;

    move-result-object v1

    .line 245
    const/16 v2, 0x64

    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/door/frame/c/a;->l()Lcom/door/frame/b/a;

    move-result-object v4

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/door/frame/c/g;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/door/frame/b/a;Ljava/util/Map;)V

    .line 246
    invoke-virtual {v0}, Lcom/door/frame/c/g;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 251
    invoke-static {}, Lcom/door/frame/c/a;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v2, v6

    move-object v1, v6

    :goto_1
    if-gez v3, :cond_7

    move-object v0, v2

    .line 281
    :cond_2
    if-eqz v0, :cond_3

    .line 282
    :try_start_1
    new-instance v2, Lcom/door/frame/c/h;

    invoke-direct {v2, v0}, Lcom/door/frame/c/h;-><init>(Ljava/lang/String;)V

    .line 283
    iget-object v0, v2, Lcom/door/frame/c/h;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/door/frame/c/a;->a(Ljava/util/List;)V

    .line 284
    invoke-static {}, Lcom/door/frame/c/a;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 286
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 287
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 288
    iget-object v2, v2, Lcom/door/frame/c/h;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/door/frame/c/a;->c(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 292
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 293
    iget-object v2, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {v2}, Lcom/door/frame/c/a;->b(Lcom/door/frame/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_3
    :goto_2
    const-string v0, "STEP_UPDATE_NORMAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "STEP_UPDATE_PARSE_ERR"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 310
    const-string v2, "errcode"

    const/16 v3, 0x1005

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v2, "success"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v2, "tid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v2, "odno"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v2, "desc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/door/frame/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 323
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 324
    return-void

    .line 234
    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 236
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 252
    :cond_7
    :try_start_4
    new-instance v5, Lcom/door/frame/a/f;

    invoke-direct {v5}, Lcom/door/frame/a/f;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 254
    iget-object v0, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/door/frame/c/a;->b(Ljava/lang/String;)V

    .line 257
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "updateUrl= "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/door/frame/c/a;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    move-object v0, v2

    move v2, v7

    .line 258
    :goto_5
    const/4 v8, 0x2

    if-lt v2, v8, :cond_b

    .line 274
    :cond_8
    invoke-virtual {v5}, Lcom/door/frame/a/f;->a()Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-virtual {v5}, Lcom/door/frame/a/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 276
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 251
    :cond_9
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move-object v2, v0

    goto/16 :goto_1

    .line 256
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/door/frame/c/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/door/frame/c/a;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 298
    :catch_0
    move-exception v0

    .line 300
    :goto_6
    :try_start_5
    invoke-static {}, Lcom/door/frame/c/a;->r()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request update error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 301
    const-string v2, "STEP_UPDATE_PARSE_ERR"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 302
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v6

    .line 304
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v0}, Lcom/door/frame/c/a;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 307
    const-string v0, "STEP_UPDATE_NORMAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "STEP_UPDATE_PARSE_ERR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 310
    const-string v1, "errcode"

    const/16 v2, 0x1005

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v1, "success"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v1, "tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v1, "odno"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v1, "desc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/door/frame/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 317
    :catch_1
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 260
    :cond_b
    const-wide/16 v8, 0x64

    :try_start_9
    invoke-static {v8, v9}, Lcom/door/frame/c/d;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 265
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/door/frame/c/a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lcom/door/frame/a/f;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 268
    if-nez v0, :cond_8

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 261
    :catch_2
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 305
    :catchall_0
    move-exception v0

    move-object v10, v1

    move-object v1, v6

    move-object v6, v10

    .line 307
    :goto_8
    const-string v2, "STEP_UPDATE_NORMAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "STEP_UPDATE_PARSE_ERR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 309
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 310
    const-string v2, "errcode"

    const/16 v3, 0x1005

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v2, "success"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v2, "tid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v2, "odno"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v2, "desc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    iget-object v2, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/door/frame/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 322
    :cond_c
    :goto_9
    throw v0

    .line 295
    :cond_d
    const/4 v0, 0x0

    :try_start_c
    invoke-static {v0}, Lcom/door/frame/c/a;->a(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 317
    :catch_3
    move-exception v1

    .line 319
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 317
    :catch_4
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 305
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_8

    .line 298
    :catch_5
    move-exception v0

    move-object v1, v6

    goto/16 :goto_6
.end method
