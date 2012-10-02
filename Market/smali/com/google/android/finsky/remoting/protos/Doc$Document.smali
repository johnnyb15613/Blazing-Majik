.class public final Lcom/google/android/finsky/remoting/protos/Doc$Document;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Document"
.end annotation


# instance fields
.field private aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

.field private availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

.field private cachedSize:I

.field private categoryId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private child_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private decoration_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private documentVariant_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;",
            ">;"
        }
    .end annotation
.end field

.field private fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private hasAggregateRating:Z

.field private hasAvailability:Z

.field private hasDocid:Z

.field private hasFetchDocid:Z

.field private hasPriceDeprecated:Z

.field private hasPrivacyPolicyUrl:Z

.field private hasSampleDocid:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private offer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private parent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

.field private privacyPolicyUrl_:Ljava/lang/String;

.field private sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private snippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;

.field private translatedSnippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation
.end field

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1374
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1379
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1399
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1419
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    .line 1456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    .line 1472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    .line 1505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    .line 1538
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    .line 1572
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    .line 1625
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    .line 1644
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    .line 1677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    .line 1710
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    .line 1743
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    .line 1777
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 1796
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    .line 1830
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->privacyPolicyUrl_:Ljava/lang/String;

    .line 1968
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    .line 1374
    return-void
.end method


# virtual methods
.method public addCategoryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1522
    if-nez p1, :cond_0

    .line 1523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    return-object p0
.end method

.method public addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1694
    if-nez p1, :cond_0

    .line 1695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    .line 1700
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1701
    return-object p0
.end method

.method public addDecoration(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1760
    if-nez p1, :cond_0

    .line 1761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1763
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    return-object p0
.end method

.method public addDocumentVariant(Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1813
    if-nez p1, :cond_0

    .line 1814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    .line 1819
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1820
    return-object p0
.end method

.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1661
    if-nez p1, :cond_0

    .line 1662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    return-object p0
.end method

.method public addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1608
    if-nez p1, :cond_0

    .line 1609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1615
    return-object p0
.end method

.method public addParent(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1727
    if-nez p1, :cond_0

    .line 1728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    .line 1733
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    return-object p0
.end method

.method public addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1489
    if-nez p1, :cond_0

    .line 1490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    .line 1495
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    return-object p0
.end method

.method public addTranslatedSnippet(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1555
    if-nez p1, :cond_0

    .line 1556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    .line 1561
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    return-object p0
.end method

.method public getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    return-object v0
.end method

.method public getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1971
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    if-gez v0, :cond_0

    .line 1973
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSerializedSize()I

    .line 1975
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    return v0
.end method

.method public getCategoryIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    return-object v0
.end method

.method public getChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    return-object v0
.end method

.method public getDecorationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getDocumentVariantList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    return-object v0
.end method

.method public getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getOfferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    return-object v0
.end method

.method public getParentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parent_:Ljava/util/List;

    return-object v0
.end method

.method public getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->privacyPolicyUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1980
    const/4 v3, 0x0

    .line 1981
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1982
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1985
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1986
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1989
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1990
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1993
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1994
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1997
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1998
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2002
    :cond_4
    const/4 v0, 0x0

    .line 2003
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2004
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2007
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 2008
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2010
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2011
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2014
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2015
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2018
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 2019
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 2022
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getChildList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 2023
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 2026
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2027
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2030
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 2031
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v4, 0xe

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    .line 2034
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTranslatedSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 2035
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/16 v4, 0xf

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    .line 2038
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocumentVariantList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    .line 2039
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    const/16 v4, 0x10

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_5

    .line 2043
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :cond_d
    const/4 v0, 0x0

    .line 2044
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2045
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_6

    .line 2048
    .end local v1           #element:Ljava/lang/String;
    :cond_e
    add-int/2addr v3, v0

    .line 2049
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 2051
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDecorationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 2052
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0x12

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_7

    .line 2055
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getParentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 2056
    .restart local v1       #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0x13

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_8

    .line 2059
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrivacyPolicyUrl()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2060
    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2063
    :cond_11
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    .line 2064
    return v3
.end method

.method public getSnippetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedSnippetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAggregateRating()Z
    .locals 1

    .prologue
    .line 1778
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating:Z

    return v0
.end method

.method public hasAvailability()Z
    .locals 1

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability:Z

    return v0
.end method

.method public hasDocid()Z
    .locals 1

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid:Z

    return v0
.end method

.method public hasFetchDocid()Z
    .locals 1

    .prologue
    .line 1400
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid:Z

    return v0
.end method

.method public hasPriceDeprecated()Z
    .locals 1

    .prologue
    .line 1573
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated:Z

    return v0
.end method

.method public hasPrivacyPolicyUrl()Z
    .locals 1

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    return v0
.end method

.method public hasSampleDocid()Z
    .locals 1

    .prologue
    .line 1420
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 1441
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1458
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2073
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2077
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2078
    :sswitch_0
    return-object p0

    .line 2083
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 2084
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2085
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2089
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 2090
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2091
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setFetchDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2095
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 2096
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2097
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setSampleDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2101
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2105
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2109
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2113
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 2114
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2115
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setPriceDeprecated(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2119
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;-><init>()V

    .line 2120
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2121
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setAvailability(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2125
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 2126
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2127
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2131
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 2132
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2133
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 2137
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;-><init>()V

    .line 2138
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2139
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2143
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    :sswitch_c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 2144
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2145
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2149
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;-><init>()V

    .line 2150
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2151
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addTranslatedSnippet(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2155
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;-><init>()V

    .line 2156
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2157
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addDocumentVariant(Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2161
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addCategoryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2165
    :sswitch_10
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 2166
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2167
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addDecoration(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2171
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_11
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 2172
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2173
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addParent(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2177
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 2073
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
        0x92 -> :sswitch_10
        0x9a -> :sswitch_11
        0xa2 -> :sswitch_12
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
    .line 1371
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1781
    if-nez p1, :cond_0

    .line 1782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1784
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating:Z

    .line 1785
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 1786
    return-object p0
.end method

.method public setAvailability(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1629
    if-nez p1, :cond_0

    .line 1630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1632
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability:Z

    .line 1633
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    .line 1634
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1383
    if-nez p1, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1386
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid:Z

    .line 1387
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1388
    return-object p0
.end method

.method public setFetchDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1403
    if-nez p1, :cond_0

    .line 1404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1406
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid:Z

    .line 1407
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1408
    return-object p0
.end method

.method public setPriceDeprecated(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1576
    if-nez p1, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1579
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated:Z

    .line 1580
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1581
    return-object p0
.end method

.method public setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    .line 1835
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->privacyPolicyUrl_:Ljava/lang/String;

    .line 1836
    return-object p0
.end method

.method public setSampleDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1423
    if-nez p1, :cond_0

    .line 1424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1426
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid:Z

    .line 1427
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1428
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle:Z

    .line 1444
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    .line 1445
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1
    .parameter "value"

    .prologue
    .line 1460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl:Z

    .line 1461
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    .line 1462
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1912
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1913
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1915
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1916
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1918
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1919
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1921
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1922
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1924
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1925
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1927
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1928
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1930
    .end local v0           #element:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1931
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1933
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1934
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1936
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1937
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1939
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1940
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 1942
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1943
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1945
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1946
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 1948
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTranslatedSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1949
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_4

    .line 1951
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocumentVariantList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    .line 1952
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_5

    .line 1954
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1955
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_6

    .line 1957
    .end local v0           #element:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDecorationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1958
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_7

    .line 1960
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getParentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1961
    .restart local v0       #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 1963
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPrivacyPolicyUrl()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1964
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1966
    :cond_11
    return-void
.end method
