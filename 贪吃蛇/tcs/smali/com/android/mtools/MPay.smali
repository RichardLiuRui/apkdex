.class public Lcom/android/mtools/MPay;
.super Ljava/lang/Object;


# static fields
.field protected static device:Lcom/android/mtools/m;

.field protected static helper:Lcom/android/mtools/d;

.field protected static mActivity:Landroid/app/Activity;

.field protected static mListener:Lcom/android/mtools/MPayListener;

.field protected static volatile mPay:Lcom/android/mtools/MPay;

.field protected static pDialog:Lcom/android/mtools/MPDialog;


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mtools/w;

    invoke-direct {v0, p0}, Lcom/android/mtools/w;-><init>(Lcom/android/mtools/MPay;)V

    iput-object v0, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    sput-object p1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/mtools/m;->b(Landroid/content/Context;)Lcom/android/mtools/m;

    move-result-object v0

    sput-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-static {p1}, Lcom/android/mtools/d;->a(Landroid/content/Context;)Lcom/android/mtools/d;

    move-result-object v0

    sput-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 6

    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "a"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "b"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "c"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "d"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "e"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "f"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "g"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "h"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "i"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "j"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "k"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "info"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v2, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Ljava/lang/String;Landroid/app/Activity;)Z

    const-string v0, "1"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "is"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->G()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ie"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->H()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ic"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->I()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "md"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->J()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "mf"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->K()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "h"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->L()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "w"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->M()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "vc"

    const-string v4, "2205"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "vn"

    const-string v4, "2.2.0.5"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "pn"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->P()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6e20\u9053\u53f7\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v2}, Lcom/android/mtools/m;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "chn"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->O()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "os"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "MCC"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->getMcc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "MNC"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->getMnc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "LAC"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->getLac()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "CID"

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->R()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "if"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/mtools/a;

    const/16 v2, 0x64

    iget-object v4, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mtools/a;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/os/Handler;I)V

    invoke-virtual {v0}, Lcom/android/mtools/a;->a()V

    const-string v0, "5624e9ef48ebc161e2cb03bbe055df8d"

    sget-object v1, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v1}, Lcom/android/mtools/m;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/testin/agent/TestinAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-virtual {v0}, Lcom/android/mtools/d;->f()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mtools/MPService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/mtools/MPay;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mtools/MPay;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mtools/MPay;->b(Lcom/android/mtools/f;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mtools/MPay;Lcom/android/mtools/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mtools/MPay;->a(Lcom/android/mtools/f;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mtools/MPay;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    return-void
.end method

.method static synthetic a(Lcom/android/mtools/MPay;Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mtools/MPay;->a(Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mtools/MPay;Ljava/util/HashMap;)V
    .locals 3

    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/m;Landroid/content/Context;Z)V

    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v2, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Ljava/lang/String;Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/android/mtools/f;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/android/mtools/n;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mtools/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/mtools/n;->S()Lcom/android/mtools/n;

    invoke-virtual {v0, v5}, Lcom/android/mtools/n;->a(Z)Lcom/android/mtools/n;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "si"

    sget-object v2, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v2}, Lcom/android/mtools/m;->G()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "ei"

    sget-object v2, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v2}, Lcom/android/mtools/m;->H()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "ic"

    sget-object v2, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v2}, Lcom/android/mtools/m;->I()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "gid"

    invoke-virtual {p1}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "cha"

    sget-object v2, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v2}, Lcom/android/mtools/m;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "pt"

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "cpOid"

    invoke-virtual {p1}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "isTest"

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "price"

    invoke-virtual {p1}, Lcom/android/mtools/f;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/mtools/a;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/mtools/a;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/os/Handler;I)V

    invoke-virtual {v0}, Lcom/android/mtools/a;->a()V

    return-void
.end method

.method private a(Lcom/android/mtools/f;Lorg/json/JSONArray;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-lt v10, v11, :cond_0

    :goto_1
    return-void

    :cond_0
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "detail"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mtools/P;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v12, v1, v2}, Lcom/android/mtools/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/mtools/e;

    move-result-object v9

    sget-object v1, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v2, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v9}, Lcom/android/mtools/d;->a(Lcom/android/mtools/e;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v9}, Lcom/android/mtools/e;->getType()I

    move-result v2

    invoke-virtual {v9}, Lcom/android/mtools/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mtools/P;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    :goto_2
    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v12, v1, v2, v3}, Lcom/android/mtools/P;->a(Ljava/lang/String;Landroid/content/Context;Lcom/android/mtools/d;Landroid/os/Handler;)V

    sget-object v1, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "pconMap.get(b) = "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "b"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const-string v1, "b"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v11, -0x1

    if-ne v10, v1, :cond_1

    const/16 v1, 0x3ea

    sget-object v2, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    :cond_1
    :goto_3
    add-int/lit8 v1, v11, -0x1

    if-ne v10, v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mtools/MPService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "pay"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "oid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v2, Lcom/android/mtools/x;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/android/mtools/x;-><init>(Lcom/android/mtools/MPay;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/mtools/x;->start()V

    :cond_2
    :goto_4
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v9}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pp"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "pc"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "bkList"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-static {}, Lcom/android/mtools/P;->U()J

    move-result-wide v5

    const-string v2, ""

    const-string v8, "b"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v2, "b"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "pp"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pc"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isEncode"

    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v4, -0x1

    sget-object v7, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static/range {v1 .. v8}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;IJLandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    sget-object v3, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v4, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v13, v1, v3, v4}, Lcom/android/mtools/P;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/android/mtools/d;Landroid/content/Context;)V

    :goto_5
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    add-int/lit8 v3, v11, -0x1

    if-ge v10, v3, :cond_14

    const/4 v1, 0x1

    move v3, v1

    :goto_6
    sget-object v1, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "b"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v3, v4}, Lcom/android/mtools/P;->a(Lcom/android/mtools/f;Ljava/lang/String;ZLcom/android/mtools/d;)V

    :cond_5
    move v1, v2

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    :pswitch_1
    invoke-virtual {v9}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pp1"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "pc1"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "pp2"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "pc2"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "sl"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "bkList"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const-string v3, ""

    const-string v2, ""

    const-string v8, "b1"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v3, "b1"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v8, "b2"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v2, "b2"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    :goto_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "pp"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pc"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sl"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "isEncode"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/mtools/P;->U()J

    move-result-wide v5

    const/4 v2, 0x1

    const/4 v4, -0x1

    sget-object v7, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static/range {v1 .. v8}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;IJLandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v3, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v15, v1, v2, v3}, Lcom/android/mtools/P;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/android/mtools/d;Landroid/content/Context;)V

    :cond_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pp"

    invoke-virtual {v2, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pc"

    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isEncode"

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/mtools/P;->U()J

    move-result-wide v5

    const/4 v2, 0x2

    const/4 v4, -0x1

    sget-object v7, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static/range {v1 .. v8}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;IJLandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    :pswitch_2
    const/4 v2, 0x1

    invoke-virtual {v9}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v7, v3, v1}, Lcom/android/mtools/MPay;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v2, "cp"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ck"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static/range {v1 .. v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :cond_a
    :goto_8
    const-string v3, "bkList"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    sget-object v4, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v4, v5}, Lcom/android/mtools/P;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/android/mtools/d;Landroid/content/Context;)V

    move v1, v2

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    goto :goto_8

    :pswitch_3
    invoke-virtual {v9}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cp"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ck"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static/range {v1 .. v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_9
    const-string v3, "bkList"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    sget-object v4, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v4, v5}, Lcom/android/mtools/P;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/android/mtools/d;Landroid/content/Context;)V

    move v1, v2

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x0

    goto :goto_9

    :pswitch_4
    invoke-virtual {v9}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cp"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ck"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cp2"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "ck2"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v4, -0x1

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static/range {v1 .. v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v4, -0x1

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    move-object v2, v8

    move-object v3, v9

    invoke-static/range {v1 .. v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_a
    const-string v3, "bkList"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    sget-object v4, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v4, v5}, Lcom/android/mtools/P;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/android/mtools/d;Landroid/content/Context;)V

    move v1, v2

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    goto :goto_a

    :pswitch_5
    const/4 v2, 0x1

    invoke-virtual {v9}, Lcom/android/mtools/e;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v7, v3, v1}, Lcom/android/mtools/MPay;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v2, "cp"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ck"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cp2"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "ck2"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v4, -0x1

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static/range {v1 .. v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v4, -0x1

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    move-object v2, v8

    move-object v3, v9

    invoke-static/range {v1 .. v6}, Lcom/android/mtools/P;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :cond_e
    :goto_b
    const-string v3, "bkList"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    sget-object v4, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v5, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1, v4, v5}, Lcom/android/mtools/P;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/android/mtools/d;Landroid/content/Context;)V

    move v1, v2

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    add-int/lit8 v1, v11, -0x1

    if-ne v10, v1, :cond_1

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const/16 v1, 0x3ea

    sget-object v2, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "MPAY"

    const/16 v6, 0x83e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0x83f

    :try_start_1
    sget-object v2, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    goto/16 :goto_4

    :cond_12
    const/16 v1, 0x83f

    sget-object v2, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v2}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_13
    move-object v9, v2

    goto/16 :goto_7

    :cond_14
    move v3, v1

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 4

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mtools/n;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mtools/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/mtools/n;->A(Ljava/lang/String;)Lcom/android/mtools/n;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/android/mtools/M;

    invoke-direct {v2, p0}, Lcom/android/mtools/M;-><init>(Lcom/android/mtools/MPay;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/mtools/n;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mtools/n;->a(Z)Lcom/android/mtools/n;

    invoke-virtual {v0}, Lcom/android/mtools/n;->T()Lcom/android/mtools/MPDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/MPDialog;->show()V

    :cond_0
    invoke-static {}, Lcom/android/mtools/P;->V()V

    const/16 v0, 0x3ea

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3eb

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3ec

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3ed

    if-ne p2, v0, :cond_2

    :cond_1
    const/16 v0, 0x3e9

    move v2, v0

    :goto_0
    sget-object v3, Lcom/android/mtools/MPay;->mListener:Lcom/android/mtools/MPayListener;

    const-string v0, "gid"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cpOid"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1, v2, p2}, Lcom/android/mtools/MPayListener;->callBack(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_2
    const/16 v0, 0x7d1

    move v2, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V
    .locals 7

    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mtools/m;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mtools/MPay;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/m;Landroid/content/Context;Z)V

    iget-object v6, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mtools/J;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mtools/J;-><init>(Lcom/android/mtools/MPay;Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;ZLjava/lang/String;)Z
    .locals 12

    const/4 v8, 0x0

    const-string v0, "pl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    move v9, v8

    :goto_0
    if-lt v9, v11, :cond_0

    :goto_1
    return p1

    :cond_0
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v0, "pp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    const-string v2, "b"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "b"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pp"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pc"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isEncode"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mtools/P;->U()J

    move-result-wide v4

    if-eqz v3, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v6, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    const/4 v3, -0x1

    sget-object v6, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    sget-object v7, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;IJLandroid/content/Context;Lcom/android/mtools/d;)Z

    move-result v0

    if-nez v0, :cond_2

    move p1, v8

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/mtools/MPay;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    return-void
.end method

.method static synthetic b(Lcom/android/mtools/MPay;Ljava/util/HashMap;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v3}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v3}, Lcom/android/mtools/P;->a(Lcom/android/mtools/m;Landroid/content/Context;Z)V

    :cond_1
    sget-object v0, Lcom/android/mtools/MPay;->pDialog:Lcom/android/mtools/MPDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/mtools/MPay;->pDialog:Lcom/android/mtools/MPDialog;

    invoke-virtual {v0}, Lcom/android/mtools/MPDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/mtools/MPay;->pDialog:Lcom/android/mtools/MPDialog;

    invoke-static {v0}, Lcom/android/mtools/MPDialog;->a(Landroid/content/DialogInterface;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detail===="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v3}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "j"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, ""

    if-ne v1, v5, :cond_5

    sparse-switch v2, :sswitch_data_0

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "msgText===="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    const-string v0, "oid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/mtools/d;->a(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, v1, v2, p1}, Lcom/android/mtools/MPay;->a(Ljava/lang/String;ILjava/util/HashMap;)V

    :cond_4
    return-void

    :sswitch_0
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f\u5931\u8d25"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "\u65e0\u53ef\u7528\u652f\u4ed8\u65b9\u5f0f"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const-string v0, "\u672a\u68c0\u6d4b\u5230\u60a8\u7684sim\u5361\uff0c\u8bf7\u786e\u8ba4\u6b63\u786e\u4f7f\u7528sim\u5361\u540e\u518d\u91cd\u8bd5"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const-string v0, "\u7f51\u7edc\u51fa\u9519\u5566"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const-string v0, "\u64cd\u4f5c\u592a\u9891\u7e41\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    move-object v1, v0

    goto :goto_0

    :sswitch_7
    const-string v0, "\u63d0\u4ea4\u9a8c\u8bc1\u7801\u5931\u8d25"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    const-string v0, "\u63d0\u4ea4\u9a8c\u8bc1\u7801\u51fa\u9519"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    const-string v0, "\u98de\u884c\u6a21\u5f0f\u4e0b\u4e0d\u652f\u6301\u5f53\u524d\u652f\u4ed8\u670d\u52a1"

    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_6
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_6
        0x7d2 -> :sswitch_6
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_5
        0x835 -> :sswitch_6
        0x836 -> :sswitch_1
        0x83b -> :sswitch_3
        0x83c -> :sswitch_1
        0x83d -> :sswitch_4
        0x841 -> :sswitch_7
        0x842 -> :sswitch_8
        0x844 -> :sswitch_9
        0x899 -> :sswitch_6
        0x89a -> :sswitch_6
    .end sparse-switch
.end method

.method private b(Lcom/android/mtools/f;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v0}, Lcom/android/mtools/m;->N()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MPAY"

    const/16 v1, 0x83b

    invoke-virtual {p1}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v6, v5, v5, v0, v1}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v0}, Lcom/android/mtools/m;->N()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-string v0, "MPAY"

    const/16 v1, 0x844

    invoke-virtual {p1}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v6, v5, v5, v0, v1}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v5}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/android/mtools/n;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mtools/n;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u6b63\u5728\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8\uff0c\u652f\u4ed8\u6210\u529f\u540e\u5c06\u6263\u9664 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mtools/f;->z()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5143\u8bdd\u8d39"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mtools/n;->A(Ljava/lang/String;)Lcom/android/mtools/n;

    new-instance v1, Lcom/android/mtools/K;

    invoke-direct {v1, p0, p1}, Lcom/android/mtools/K;-><init>(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V

    invoke-virtual {v0, v1}, Lcom/android/mtools/n;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/android/mtools/L;

    invoke-direct {v2, p0, p1}, Lcom/android/mtools/L;-><init>(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/mtools/n;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    invoke-virtual {v0, v5}, Lcom/android/mtools/n;->a(Z)Lcom/android/mtools/n;

    invoke-virtual {v0}, Lcom/android/mtools/n;->T()Lcom/android/mtools/MPDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/MPDialog;->show()V

    goto :goto_0

    :cond_3
    const-string v0, "1"

    invoke-direct {p0, p1, v0}, Lcom/android/mtools/MPay;->a(Lcom/android/mtools/f;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/android/mtools/MPay;Ljava/util/HashMap;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x0

    const-string v0, "resultCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v0, "cpOid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v0, "price"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "You still have a order not finished, please wait some time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MPAY"

    const/16 v1, 0x843

    const-string v5, ""

    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v8, v2, v2, v0, v1}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    const-string v1, ""

    invoke-virtual/range {v0 .. v5}, Lcom/android/mtools/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/android/mtools/f;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "msoid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/mtools/f;->k(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne v7, v3, :cond_2

    const-string v3, "chList"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/mtools/f;->c(I)V

    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v4, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/mtools/d;->a(Lcom/android/mtools/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v3}, Lcom/android/mtools/MPay;->a(Lcom/android/mtools/f;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MPAY"

    const/16 v4, 0x83e

    invoke-virtual {v1}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v8, v2, v2, v1, v3}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x83f

    :try_start_1
    sget-object v3, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v1, v3}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    sget-object v3, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/mtools/d;->a(Lcom/android/mtools/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x836

    invoke-static {v0, v1}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v3, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v3}, Lcom/android/mtools/P;->a(Ljava/util/HashMap;Lcom/android/mtools/d;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x83f

    sget-object v3, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v1, v3}, Lcom/android/mtools/P;->a(ILcom/android/mtools/f;Lcom/android/mtools/d;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mtools/MPay;
    .locals 3

    sget-object v0, Lcom/android/mtools/MPay;->mPay:Lcom/android/mtools/MPay;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    if-eq p0, v0, :cond_3

    :cond_0
    const-class v1, Lcom/android/mtools/MPay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mtools/MPay;->mPay:Lcom/android/mtools/MPay;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    if-eq p0, v0, :cond_2

    :cond_1
    const-string v0, "cpMsg"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "maiMsa"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "channelId"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/android/mtools/MPay;

    invoke-direct {v0, p0}, Lcom/android/mtools/MPay;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/mtools/MPay;->mPay:Lcom/android/mtools/MPay;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/android/mtools/MPay;->mPay:Lcom/android/mtools/MPay;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/mtools/P;->V()V

    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    const-string v1, ""

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mtools/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/android/mtools/f;

    move-result-object v1

    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mtools/m;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MPAY"

    const/16 v3, 0x7d2

    invoke-virtual {v1}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v8, v2, v2, v0, v1}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v2}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v3

    const-string v0, "d"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "e"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "f"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "g"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "h"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v3}, Lcom/android/mtools/m;->N()I

    if-ne v4, v9, :cond_2

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/mtools/MPay;->b(Lcom/android/mtools/f;)V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    if-ne v5, v9, :cond_3

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    if-eqz v0, :cond_10

    :cond_3
    if-ne v4, v9, :cond_4

    if-ne v5, v9, :cond_4

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    if-nez v0, :cond_4

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-ne v6, v9, :cond_5

    if-nez v7, :cond_5

    if-eqz v0, :cond_11

    :cond_5
    if-ne v4, v9, :cond_6

    if-nez v5, :cond_6

    if-ne v6, v9, :cond_6

    if-nez v7, :cond_6

    if-nez v0, :cond_6

    :cond_6
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    if-ne v7, v9, :cond_7

    if-eqz v0, :cond_0

    :cond_7
    if-nez v4, :cond_8

    if-nez v5, :cond_8

    if-nez v6, :cond_8

    if-nez v7, :cond_8

    if-eq v0, v9, :cond_0

    :cond_8
    if-nez v4, :cond_9

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-nez v7, :cond_9

    if-eqz v0, :cond_12

    :cond_9
    if-ne v4, v9, :cond_a

    if-nez v5, :cond_a

    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-nez v0, :cond_a

    :cond_a
    new-instance v3, Lcom/android/mtools/n;

    sget-object v8, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v8}, Lcom/android/mtools/n;-><init>(Landroid/content/Context;)V

    const-string v8, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v3, v8}, Lcom/android/mtools/n;->B(Ljava/lang/String;)Lcom/android/mtools/n;

    invoke-virtual {v3, v2}, Lcom/android/mtools/n;->a(Z)Lcom/android/mtools/n;

    if-ne v4, v9, :cond_b

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->N()I

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Lcom/android/mtools/y;

    invoke-direct {v4, p0, v1}, Lcom/android/mtools/y;-><init>(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V

    invoke-virtual {v3, v4}, Lcom/android/mtools/n;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    :cond_b
    if-ne v5, v9, :cond_c

    new-instance v4, Lcom/android/mtools/z;

    invoke-direct {v4, p0, v1}, Lcom/android/mtools/z;-><init>(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V

    invoke-virtual {v3, v4}, Lcom/android/mtools/n;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    :cond_c
    if-ne v6, v9, :cond_d

    new-instance v4, Lcom/android/mtools/A;

    invoke-direct {v4, p0, v1}, Lcom/android/mtools/A;-><init>(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V

    invoke-virtual {v3, v4}, Lcom/android/mtools/n;->d(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    :cond_d
    if-ne v7, v9, :cond_e

    new-instance v1, Lcom/android/mtools/B;

    invoke-direct {v1, p0}, Lcom/android/mtools/B;-><init>(Lcom/android/mtools/MPay;)V

    invoke-virtual {v3, v1}, Lcom/android/mtools/n;->e(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    :cond_e
    if-ne v0, v9, :cond_f

    new-instance v0, Lcom/android/mtools/C;

    invoke-direct {v0, p0}, Lcom/android/mtools/C;-><init>(Lcom/android/mtools/MPay;)V

    invoke-virtual {v3, v0}, Lcom/android/mtools/n;->f(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    :cond_f
    new-instance v0, Lcom/android/mtools/D;

    invoke-direct {v0, p0}, Lcom/android/mtools/D;-><init>(Lcom/android/mtools/MPay;)V

    invoke-virtual {v3, v0}, Lcom/android/mtools/n;->g(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {v3, v0, v10}, Lcom/android/mtools/n;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    new-instance v0, Lcom/android/mtools/F;

    invoke-direct {v0, p0}, Lcom/android/mtools/F;-><init>(Lcom/android/mtools/MPay;)V

    invoke-virtual {v3, v0}, Lcom/android/mtools/n;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;

    invoke-virtual {v3, v2}, Lcom/android/mtools/n;->a(Z)Lcom/android/mtools/n;

    invoke-virtual {v3}, Lcom/android/mtools/n;->T()Lcom/android/mtools/MPDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/MPDialog;->show()V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/mtools/P;->V()V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/mtools/P;->V()V

    goto/16 :goto_0

    :cond_12
    const-string v0, "MPAY"

    const/16 v1, 0x7d3

    invoke-static {v0, v1, p1, p2, v10}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v8, v2, v2, v0, v1}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method public initMPay()V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    const-string v1, "getFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isNeed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mtools/m;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/android/mtools/MPay;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    sget-object v1, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v3}, Lcom/android/mtools/P;->a(Lcom/android/mtools/m;Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mtools/G;

    invoke-direct {v1, p0}, Lcom/android/mtools/G;-><init>(Lcom/android/mtools/MPay;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mtools/H;

    invoke-direct {v1, p0}, Lcom/android/mtools/H;-><init>(Lcom/android/mtools/MPay;)V

    const-wide/32 v2, 0x84d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public xPay(Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V
    .locals 9

    const-wide/16 v7, 0x2710

    const/4 v6, 0x0

    const/4 v5, 0x1

    sput-object p4, Lcom/android/mtools/MPay;->mListener:Lcom/android/mtools/MPayListener;

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    const-string v1, "getFlag"

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    cmp-long v1, v1, v7

    if-gez v1, :cond_1

    const/4 v0, 0x2

    const-string v1, "MPAY"

    const/16 v2, 0x7d4

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v0, v6, v6, v1, v2}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "isNeed"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    invoke-static {v0, v5}, Lcom/android/mtools/P;->a(Lcom/android/mtools/d;Z)Ljava/util/HashMap;

    move-result-object v2

    const-string v0, "a"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flag===="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    if-ne v0, v5, :cond_2

    if-ne v1, v5, :cond_2

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mtools/MPService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "init"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "i"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pluto"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/mtools/MPay;->device:Lcom/android/mtools/m;

    invoke-virtual {v4}, Lcom/android/mtools/m;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mtools/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "i"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pc"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/mtools/MPay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mtools/I;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mtools/I;-><init>(Lcom/android/mtools/MPay;Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V

    iget-object v1, p0, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mtools/MPay;->a(Ljava/lang/String;Ljava/lang/String;ILcom/android/mtools/MPayListener;)V

    goto/16 :goto_0
.end method
