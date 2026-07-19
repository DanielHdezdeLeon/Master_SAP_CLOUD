@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Modelo Jerárquico'
define hierarchy ZCDS_MOD_FLIGHT_HIER_DHL
  as parent child hierarchy (
    source ZCDS_FLIGHT_HIERA_DHL
    child to parent association _Agency
    start where AgencyId is initial
    siblings order by AgencyId
    multiple parents allowed
    orphans ignore
    cycles breakup
  )
{
    AgencyId,
    CustomerId,
    $node.node_id as NodeId,
    $node.hierarchy_is_cycle as Hiscycling,
    $node.hierarchy_is_orphan as HisOrphan,
    $node.hierarchy_level as HisLevel,
    $node.hierarchy_parent_rank as HisParentRank,
    $node.hierarchy_rank as HisRank,
    $node.hierarchy_tree_size as HisTreesize

    
    
    
    
}
