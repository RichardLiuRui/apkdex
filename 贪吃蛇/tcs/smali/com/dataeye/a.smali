.class Lcom/dataeye/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dataeye/ConfigParamsUpdateListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 0

    invoke-static {}, Lcom/dataeye/DCCocos2dConfigParams;->updateComplete()V

    return-void
.end method
