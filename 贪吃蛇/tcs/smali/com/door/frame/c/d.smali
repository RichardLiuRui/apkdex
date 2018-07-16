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

    .line 218
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 223
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 229
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string v0, "aid"

    invoke-static {}, Lcom/door/frame/c/a;->n()Lcom/door/frame/a/a;

    move-result-object v1

    iget v1, v1, Lcom/door/frame/a/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "chid"

    invoke-static {}, Lcom/door/frame/c/a;->n()Lcom/door/frame/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/door/frame/a/a;->a:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "prod"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "mac"

    iget-object v1, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/door/frame/utils/CmmUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "screenx"

    iget-object v1, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/door/frame/utils/CmmUtils;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "screeny"

    iget-object v1, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/door/frame/utils/CmmUtils;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "plat"

    iget-object v1, p0, Lcom/door/frame/c/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/door/frame/utils/CmmUtils;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "sinfo"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "apil"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "sys"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "sver"

    invoke-static {}, Lcom/door/frame/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "cpid"

    invoke-static {}, Lcom/door/frame/c/a;->n()Lcom/door/frame/a/a;

    move-result-object v1

    iget v1, v1, Lcom/door/frame/a/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "ua"

    iget-object v1, p0, Lcom/door/frame/c/d;->c:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "uid"

    invoke-static {}, Lcom/door/frame/c/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "appstart"

    iget v1, p0, Lcom/door/frame/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "md"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "yt"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 264
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 265
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    const-string v2, "version"

    invoke-static {}, Lcom/door/frame/c/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 269
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 270
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string v2, "version"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 274
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 275
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    const-string v2, "version"

    iget-object v3, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {v3}, Lcom/door/frame/c/a;->a(Lcom/door/frame/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 279
    const-string v1, "verlist"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move v0, v7

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_6

    .line 289
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 290
    const-string v0, "log"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    new-instance v0, Lcom/door/frame/c/g;

    invoke-static {}, Lcom/door/frame/c/a;->g()Landroid/content/Context;

    move-result-object v1

    .line 294
    const/16 v2, 0x64

    invoke-static {}, Lcom/door/frame/c/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/door/frame/c/a;->n()Lcom/door/frame/a/a;

    move-result-object v4

    .line 293
    invoke-direct/range {v0 .. v5}, Lcom/door/frame/c/g;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/door/frame/a/a;Ljava/util/Map;)V

    .line 295
    invoke-virtual {v0}, Lcom/door/frame/c/g;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 300
    invoke-static {}, Lcom/door/frame/c/a;->q()Ljava/util/List;

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
    if-gez v3, :cond_8

    move-object v0, v2

    .line 330
    :cond_2
    if-eqz v0, :cond_3

    .line 331
    :try_start_1
    new-instance v2, Lcom/door/frame/c/h;

    invoke-direct {v2, v0}, Lcom/door/frame/c/h;-><init>(Ljava/lang/String;)V

    .line 332
    iget-object v0, v2, Lcom/door/frame/c/h;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/door/frame/c/a;->a(Ljava/util/List;)V

    .line 333
    invoke-static {}, Lcom/door/frame/c/a;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 335
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 336
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 337
    iget-object v2, v2, Lcom/door/frame/c/h;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/door/frame/c/a;->c(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 341
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 342
    iget-object v2, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {v2}, Lcom/door/frame/c/a;->b(Lcom/door/frame/c/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
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

    .line 358
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 359
    const-string v2, "errcode"

    const/16 v3, 0x1005

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    const-string v2, "success"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    const-string v2, "tid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v2, "odno"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v2, "desc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->l()Ljava/lang/String;

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

    .line 364
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/door/frame/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 372
    :cond_4
    :goto_3
    invoke-static {}, Lcom/door/frame/c/a;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Plugin3.apk"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 378
    return-void

    .line 283
    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    .line 285
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/door/frame/c/d;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 282
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 301
    :cond_8
    :try_start_4
    new-instance v5, Lcom/door/frame/b/a;

    invoke-direct {v5}, Lcom/door/frame/b/a;-><init>()V

    .line 302
    iget-object v0, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 303
    iget-object v0, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/door/frame/c/a;->b(Ljava/lang/String;)V

    .line 306
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "updateUrl= "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/door/frame/c/a;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    move-object v0, v2

    move v2, v7

    .line 307
    :goto_6
    if-lt v2, v10, :cond_d

    .line 323
    :cond_9
    iget-object v6, v5, Lcom/door/frame/b/a;->a:Ljava/lang/String;

    .line 324
    iget-object v1, v5, Lcom/door/frame/b/a;->b:Ljava/lang/String;

    .line 325
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/door/frame/c/d;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 300
    :cond_a
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move-object v2, v0

    goto/16 :goto_1

    .line 305
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/door/frame/c/a;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/door/frame/c/a;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 347
    :catch_0
    move-exception v0

    .line 349
    :goto_7
    :try_start_5
    invoke-static {}, Lcom/door/frame/c/a;->t()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request update error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    .line 350
    const-string v2, "STEP_UPDATE_PARSE_ERR"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 351
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v6

    .line 353
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v0}, Lcom/door/frame/c/a;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 356
    const-string v0, "STEP_UPDATE_NORMAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "STEP_UPDATE_PARSE_ERR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 358
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 359
    const-string v1, "errcode"

    const/16 v2, 0x1005

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    const-string v1, "success"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    const-string v1, "tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v1, "odno"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v1, "desc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->l()Ljava/lang/String;

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

    .line 364
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/door/frame/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 372
    :cond_c
    :goto_8
    invoke-static {}, Lcom/door/frame/c/a;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Plugin3.apk"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 309
    :cond_d
    const-wide/16 v8, 0x64

    :try_start_9
    invoke-static {v8, v9}, Lcom/door/frame/c/d;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 314
    :goto_9
    :try_start_a
    invoke-static {}, Lcom/door/frame/c/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lcom/door/frame/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 317
    if-nez v0, :cond_9

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 310
    :catch_1
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    .line 354
    :catchall_0
    move-exception v0

    move-object v11, v1

    move-object v1, v6

    move-object v6, v11

    .line 356
    :goto_a
    const-string v2, "STEP_UPDATE_NORMAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "STEP_UPDATE_PARSE_ERR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 358
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 359
    const-string v2, "errcode"

    const/16 v3, 0x1005

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    const-string v2, "success"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    const-string v2, "tid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v2, "odno"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v2, "desc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->l()Ljava/lang/String;

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

    .line 364
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    iget-object v2, p0, Lcom/door/frame/c/d;->a:Lcom/door/frame/c/a;

    invoke-static {}, Lcom/door/frame/c/a;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/door/frame/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 372
    :cond_e
    :goto_b
    invoke-static {}, Lcom/door/frame/c/a;->m()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 374
    invoke-static {}, Lcom/door/frame/c/a;->a()Lcom/door/frame/c/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/door/frame/c/a;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Plugin3.apk"

    invoke-virtual {v1, v2, v3}, Lcom/door/frame/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_f
    throw v0

    .line 344
    :cond_10
    const/4 v0, 0x0

    :try_start_c
    invoke-static {v0}, Lcom/door/frame/c/a;->a(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 366
    :catch_2
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 366
    :catch_3
    move-exception v1

    .line 368
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 366
    :catch_4
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 354
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a

    .line 347
    :catch_5
    move-exception v0

    move-object v1, v6

    goto/16 :goto_7
.end method
