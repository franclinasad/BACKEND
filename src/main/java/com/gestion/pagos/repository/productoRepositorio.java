package com.gestion.pagos.repository;

import com.gestion.pagos.model.Productos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface productoRepositorio extends JpaRepository<Productos, Long> {
}
