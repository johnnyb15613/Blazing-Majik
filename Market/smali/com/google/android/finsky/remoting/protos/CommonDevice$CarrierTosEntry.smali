.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierTosEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasUrl:Z

.field private hasVersion:Z

.field private url_:Ljava/lang/String;

.field private version_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1838
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->url_:Ljava/lang/String;

    .line 1860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->version_:Ljava/lang/String;

    .line 1896
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->cachedSize:I

    .line 1838
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1899
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 1901
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getSerializedSize()I

    .line 1903
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1910
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1913
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1914
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1917
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->cachedSize:I

    .line 1918
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1845
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasUrl:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1862
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1926
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1927
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1931
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1932
    :sswitch_0
    return-object p0

    .line 1937
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    goto :goto_0

    .line 1941
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    goto :goto_0

    .line 1927
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1835
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v0

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasUrl:Z

    .line 1848
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->url_:Ljava/lang/String;

    .line 1849
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasVersion:Z

    .line 1865
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->version_:Ljava/lang/String;

    .line 1866
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1891
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1894
    :cond_1
    return-void
.end method
