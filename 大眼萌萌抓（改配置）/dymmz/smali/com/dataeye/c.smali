.class Lcom/dataeye/c;
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
    .locals 3

    sget-object v0, Lcom/dataeye/DCUnityConfigParams;->unity_object:Ljava/lang/String;

    sget-object v1, Lcom/dataeye/DCUnityConfigParams;->unity_function:Ljava/lang/String;

    const-string v2, "DataeyeConfigParamsComplete"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
